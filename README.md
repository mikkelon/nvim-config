## Mikkel Overgaard's Neovim Configuration

Welcome to my personal Neovim configuration! This repository serves as both a backup for myself and a resource to share with others. The configuration is based on [nvim-lua/kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), providing a clean and minimalistic setup.

### Features

- **Customization**: Built upon kickstart.nvim, my configuration includes additional plugins and tailored settings to enhance the editing experience.
- **Enhanced Functionality**: Incorporates plugins such as nvim-neo-tree/neo-tree.nvim for file tree navigation, karb94/neoscroll.nvim for smooth scrolling and ggandor/leap.nvim for enhanced navigation.
- **Custom Keymaps**: I have added custom keymaps to improve productivity, which are organized in a separate file called "keymaps.lua".

### Installed Plugins

- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

### Installation (Linux)

1. Ensure Neovim is installed on your system.
2. Clone this repository to your Neovim configuration directory (usually `~/.config/nvim`):
```
git clone https://github.com/mikkelovergaard/nvim-config.git ~/.config/nvim
```
3. Launch Neovim. Plugins will be automatically installed using lazy.nvim, and the configuration will be set up.

### Installation (Windows)

1. Ensure Neovim is installed on your system.
2. Clone this repository to your Neovim configuration directory (usually `%APPDATA%\nvim`):
```
git clone https://github.com/mikkelovergaard/nvim-config.git %APPDATA%\nvim
```
3. Launch Neovim. Plugins will be automatically installed using lazy.nvim, and the configuration will be set up.

### Clipboard sync between Windows and WSL
If you are running Nvim in a WSL environment, it is possible to 'sync' the clipboard between Nvim and Windows.
For this to work, the following script should be available in your $PATH:
```Bash
#!/bin/sh

# Check for win32yank.exe executable
if command -v win32yank.exe >/dev/null 2>/dev/null; then
    # The --lf option pastes data unix style. Which is what I almost always want.
    win32yank.exe -o --lf
else
    # Else rely on PowerShell being installed and available.
    powershell.exe Get-Clipboard | tr -d '\r' | sed -z '$ s/\n$//'
fi
```
If you want to know more about how it works, check out [this blog post](https://mitchellt.com/2022/05/15/WSL-Neovim-Lua-and-the-Windows-Clipboard.html)

Happy coding! 🔥😊
