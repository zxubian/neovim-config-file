# neovim-config-file

## Prerequisites
- [plug](https://github.com/junegunn/vim-plug)
- cmake
- visual studio build tools

``` sh
choco install fd llvm ripgrep
```
## Installation
- put Init.vim into your %localappdata%/nvim folder
- run :PlugInstall in NeoVim
- run TSUpdate
- if you get errors for telescope native fuzz search, go to "%localappdata%\nvim-data\plugged\telescope-fzf-native.nvim\", and execute the following:

``` powershell
cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
cmake --install build --prefix build
```
