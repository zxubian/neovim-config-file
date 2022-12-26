# neovim-config-file

## Prerequisites
- [plug](https://github.com/junegunn/vim-plug)
- cmake
- visual studio build tools
- python3 & pip
    - Ubuntu:
        - ` python3 -m pip install --user --upgrade pynvim`
    - Windows:
        - ` python -m pip install --user --upgrade pynvim`
- zstd

``` sh
choco install fd llvm ripgrep zstandard
```
## Installation
- put Init.vim into your %localappdata%/nvim folder
- run :PlugInstall in NeoVim
- run TSUpdate
- if you get errors for telescope native fuzz search, go to "~\.config\nvim-data\plugged\telescope-fzf-native.nvim\", and execute the following:

``` powershell
cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
cmake --install build --prefix build
```
