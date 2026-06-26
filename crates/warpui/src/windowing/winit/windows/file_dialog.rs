use std::ffi::OsString;
use std::os::windows::ffi::OsStringExt;
use std::sync::Arc;

use windows::core::{Interface, PCWSTR};
use windows::Win32::System::Com::{
    CoCreateInstance, CoInitializeEx, CoTaskMemFree, CoUninitialize, CLSCTX_ALL,
    COINIT_APARTMENTTHREADED, COINIT_DISABLE_OLE1DDE,
};
use windows::Win32::UI::Shell::Common::COMDLG_FILTERSPEC;
use windows::Win32::UI::Shell::{
    FileOpenDialog, IFileOpenDialog, IFileDialog, FOS_ALLOWMULTISELECT,
    FOS_FILEMUSTEXIST, FOS_PICKFOLDERS, SIGDN_FILESYSPATH,
};

use crate::platform::file_picker::{
    FilePickerCallback, FilePickerConfiguration, FilePickerError,
};
use crate::windowing::winit::app::CustomEvent;

const ERROR_CANCELLED: windows::core::HRESULT = windows::core::HRESULT(0x800704C7u32 as i32);

pub fn open_file_dialog(
    callback: Arc<takecell::TakeOwnCell<FilePickerCallback>>,
    file_picker_config: FilePickerConfiguration,
    event_loop_proxy: winit::event_loop::EventLoopProxy<CustomEvent>,
) {
    let callback_err = callback.clone();
    let event_loop_proxy_err = event_loop_proxy.clone();
    let result = std::thread::Builder::new()
        .name("File Picker".to_string())
        .spawn(move || {
            let result = show_dialog(&file_picker_config);
            let _ = event_loop_proxy.send_event(CustomEvent::UpdateUIApp(Box::new(move |app| {
                if let Some(callback) = callback.take() {
                    callback(result, app);
                }
            })));
        });

    if let Err(e) = result {
        let _ = event_loop_proxy_err.send_event(CustomEvent::UpdateUIApp(Box::new(move |app| {
            if let Some(callback) = callback_err.take() {
                callback(Err(FilePickerError::ThreadSpawnFailed(Arc::new(e))), app);
            }
        })));
    }
}

fn show_dialog(config: &FilePickerConfiguration) -> Result<Vec<String>, FilePickerError> {
    unsafe {
        CoInitializeEx(None, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE)
            .ok()
            .map_err(|e| FilePickerError::DialogFailed(e.to_string()))?;

        let result = show_dialog_inner(config);

        CoUninitialize();

        result
    }
}

unsafe fn show_dialog_inner(
    config: &FilePickerConfiguration,
) -> Result<Vec<String>, FilePickerError> {
    let dialog: IFileOpenDialog =
        CoCreateInstance(&FileOpenDialog, None, CLSCTX_ALL).map_err(|e| {
            FilePickerError::DialogFailed(format!("CoCreateInstance failed: {e}"))
        })?;

    let file_dialog: IFileDialog = dialog.cast().map_err(|e| {
        FilePickerError::DialogFailed(format!("IFileOpenDialog cast failed: {e}"))
    })?;

    if config.allows_folder() {
        let options = FOS_PICKFOLDERS | FOS_FILEMUSTEXIST;
        file_dialog.SetOptions(options).map_err(|e| {
            FilePickerError::DialogFailed(format!("SetOptions failed: {e}"))
        })?;
    } else {
        let mut options = FOS_FILEMUSTEXIST;
        if config.allows_multi_select() {
            options |= FOS_ALLOWMULTISELECT;
        }
        file_dialog.SetOptions(options).map_err(|e| {
            FilePickerError::DialogFailed(format!("SetOptions failed: {e}"))
        })?;

        let file_types = config.file_types();
        if !file_types.is_empty() {
            let filter_name: Vec<u16> = file_types
                .iter()
                .map(|ft| ft.display_name())
                .collect::<Vec<_>>()
                .join(", ")
                .encode_utf16()
                .chain(std::iter::once(0))
                .collect();
            let filter_spec: Vec<u16> = file_types
                .iter()
                .flat_map(|ft| ft.extensions().iter().map(|ext| format!("*.{ext}")))
                .collect::<Vec<_>>()
                .join(";")
                .encode_utf16()
                .chain(std::iter::once(0))
                .collect();

            let spec = COMDLG_FILTERSPEC {
                pszName: PCWSTR(filter_name.as_ptr()),
                pszSpec: PCWSTR(filter_spec.as_ptr()),
            };

            file_dialog.SetFileTypes(&[spec]).map_err(|e| {
                FilePickerError::DialogFailed(format!("SetFileTypes failed: {e}"))
            })?;
        }
    }

    let title = if config.allows_folder() {
        "Choose directory..."
    } else {
        "Choose file..."
    };
    let title_wide: Vec<u16> = title.encode_utf16().chain(std::iter::once(0)).collect();
    file_dialog
        .SetTitle(PCWSTR(title_wide.as_ptr()))
        .map_err(|e| FilePickerError::DialogFailed(format!("SetTitle failed: {e}")))?;

    let show_result = dialog.Show(None);
    if let Err(e) = &show_result {
        if e.code() == ERROR_CANCELLED {
            return Ok(vec![]);
        }
        return Err(FilePickerError::DialogFailed(format!(
            "IFileDialog::Show failed: {e}"
        )));
    }

    let results = dialog.GetResults().map_err(|e| {
        FilePickerError::DialogFailed(format!("GetResults failed: {e}"))
    })?;

    let count = results.GetCount().map_err(|e| {
        FilePickerError::DialogFailed(format!("GetCount failed: {e}"))
    })?;

    let mut paths = Vec::new();
    for i in 0..count {
        let item = results.GetItemAt(i).map_err(|e| {
            FilePickerError::DialogFailed(format!("GetItemAt failed: {e}"))
        })?;

        let display_name = item.GetDisplayName(SIGDN_FILESYSPATH).map_err(|e| {
            FilePickerError::DialogFailed(format!("GetDisplayName failed: {e}"))
        })?;

        let len = {
            let mut len = 0;
            while *display_name.as_ptr().add(len) != 0 {
                len += 1;
            }
            len
        };
        let s = OsString::from_wide(std::slice::from_raw_parts(display_name.as_ptr(), len));
        CoTaskMemFree(Some(display_name.as_ptr() as *const _));

        if let Some(path_str) = s.to_str() {
            paths.push(path_str.to_string());
        } else {
            return Err(FilePickerError::DialogFailed(format!(
                "Invalid path encoding: {s:?}"
            )));
        }
    }

    Ok(paths)
}
