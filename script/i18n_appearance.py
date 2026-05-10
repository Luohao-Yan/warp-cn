#!/usr/bin/env python3
"""Add appearance page FTL entries and migrate strings."""
import os

entries = {
    'appearance-font-size': ['Font size (px)', '字号 (px)'],
    'appearance-font-weight': ['Font weight', '字重'],
    'appearance-line-height': ['Line height', '行高'],
    'appearance-cursor-type': ['Cursor type', '光标类型'],
    'appearance-cursor': ['Cursor', '光标'],
    'appearance-input-position': ['Input position', '输入位置'],
    'appearance-input-type': ['Input type', '输入类型'],
    'appearance-compact-mode': ['Compact mode', '紧凑模式'],
    'appearance-dim-inactive-panes': ['Dim inactive panes', '非活动窗格变暗'],
    'appearance-focus-follows-mouse': ['Focus follows mouse', '鼠标跟焦'],
    'appearance-enforce-min-contrast': ['Enforce minimum contrast', '强制最小对比度'],
    'appearance-current-theme': ['Current theme', '当前主题'],
    'appearance-dark': ['Dark', '深色'],
    'appearance-light': ['Light', '浅色'],
    'appearance-system': ['Auto (system)', '跟随系统'],
    'appearance-agent-font': ['Agent font', '代理字体'],
    'appearance-blink-cursor': ['Blinking cursor', '闪烁光标'],
    'appearance-header-toolbar': ['Header toolbar layout', '标题工具栏布局'],
    'appearance-input': ['Input', '输入'],
    'appearance-blocks': ['Blocks', '区块'],
    'appearance-never': ['Never', '从不'],
    'appearance-always': ['Always', '总是'],
    'appearance-default-label': ['Default', '默认'],
    'appearance-opacity': ['Opacity', '不透明度'],
    'appearance-directory-tab-colors': ['Directory tab colors', '目录标签颜色'],
    'appearance-tab-close-position': ['Tab close button position', '标签关闭按钮位置'],
    'appearance-zoom-level': ['Zoom level', '缩放级别'],
    'appearance-left': ['Left', '左'],
    'appearance-right': ['Right', '右'],
    'appearance-blinking-cursor': ['Blinking cursor', '闪烁光标'],
    'appearance-thin-strokes': ['Thin strokes', '细笔画'],
    'appearance-background-opacity': ['Background opacity', '背景不透明度'],
    'appearance-open-windows-size': ['Open windows at custom size', '以自定义大小打开窗口'],
    'appearance-respect-system-theme': ['Respect system theme', '跟随系统主题'],
    'appearance-all-available-fonts': ['All available fonts', '所有可用字体'],
    'appearance-icon': ['Icon', '图标'],
    'appearance-create-custom-theme': ['Create your own custom theme', '创建自定义主题'],
}

for lang, suffix in [('en-US', ''), ('zh-CN', '')]:
    path = f'resources/i18n/{lang}/settings.ftl'
    content = open(path).read()
    add_count = 0
    for key, (val, _) in sorted(entries.items()):
        en_val = entries[key][0]
        zh_val = entries[key][1]
        actual_val = en_val if lang == 'en-US' else zh_val
        entry = f'{key} = {actual_val}\n'
        if entry not in content:
            content += entry
            add_count += 1
    open(path, 'w').write(content)
    print(f'{path}: +{add_count} entries')
