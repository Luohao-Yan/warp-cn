#!/usr/bin/env python3
"""Add appearance_page visible strings to FTL."""
entries = {
    # Section headers
    'appearance-theme-header': ['Theme', '主题'],
    'appearance-font-header': ['Font', '字体'],
    'appearance-cursor-header': ['Cursor', '光标'],
    'appearance-input-header': ['Input', '输入'],
    'appearance-window-header': ['Window', '窗口'],
    'appearance-blocks-header': ['Blocks', '区块'],
    
    # Dropdown labels
    'appearance-theme-aurora': ['Aurora', '极光'],
    'appearance-theme-comets': ['Comets', '彗星'],
    'appearance-theme-glass-sky': ['Glass Sky', '玻璃天空'],
    'appearance-theme-glitch': ['Glitch', '故障'],
    'appearance-theme-glow': ['Glow', '发光'],
    'appearance-theme-holographic': ['Holographic', '全息'],
    'appearance-theme-neon': ['Neon', '霓虹'],
    'appearance-theme-novel': ['Novel', '小说'],
    'appearance-theme-spring': ['Spring', '春天'],
    'appearance-theme-sunset': ['Sunset', '日落'],
    'appearance-theme-synthwave': ['Synthwave', '合成波'],
    'appearance-theme-wood': ['Wood', '木'],
    
    # Input mode options
    'appearance-input-waterfall': ['Waterfall', '瀑布流'],
    'appearance-input-pinned-top': ['Pinned to top', '固定顶部'],
    'appearance-input-pinned-bottom': ['Pinned to bottom', '固定底部'],
    
    # Input type options
    'appearance-input-universal': ['Universal', '通用'],
    'appearance-input-classic-1': ['Classic 1', '经典 1'],
    'appearance-input-classic-2': ['Classic 2', '经典 2'],
    'appearance-input-classic-3': ['Classic 3', '经典 3'],
    
    # Cursor type options
    'appearance-cursor-block': ['Block', '方块'],
    'appearance-cursor-underline': ['Underline', '下划线'],
    'appearance-cursor-vertical-bar': ['Vertical bar', '竖线'],
    
    # Thin strokes
    'appearance-thin-strokes-always': ['Always', '总是'],
    'appearance-thin-strokes-never': ['Never', '从不'],
    'appearance-thin-strokes-auto': ['Auto', '自动'],
    
    # Enforce minimum contrast
    'appearance-contrast-off': ['Off', '关闭'],
    'appearance-contrast-medium': ['Medium', '中等'],
    'appearance-contrast-strong': ['Strong', '强烈'],
    
    # Tab close button position
    'appearance-tab-close-left': ['Left side of tab', '标签左侧'],
    'appearance-tab-close-right': ['Right side of tab', '标签右侧'],
    
    # Workspace decoration visibility
    'appearance-decoration-always-show': ['Always show tab bar', '始终显示'],
    'appearance-decoration-hide-fullscreen': ['Hide tab bar if fullscreen', '全屏时隐藏'],
    'appearance-decoration-on-hover': ['Only show tab bar on hover', '悬停时显示'],
    
    # App icon options
    'appearance-app-icon-classic': ['Classic', '经典'],
    'appearance-app-icon-retro': ['Retro', '复古'],
    'appearance-app-icon-simple': ['Simple', '简洁'],
}

for lang in ['en-US', 'zh-CN']:
    path = f'resources/i18n/{lang}/settings.ftl'
    with open(path) as f:
        content = f.read()
    count = 0
    for key, (en, zh) in sorted(entries.items()):
        val = en if lang == 'en-US' else zh
        line = f'{key} = {val}\n'
        if line not in content:
            content += line
            count += 1
    with open(path, 'w') as f:
        f.write(content)
    print(f'{path}: +{count}')
