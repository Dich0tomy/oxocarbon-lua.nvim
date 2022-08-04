## oxocarbon-lua.nvim

A lua rewrite of the original [oxocarbon.nvim](https://github.com/shaunsingh/oxocarbon.nvim) theme written in Rust.  
Original author: [@shaunsingh](https://github.com/shaunsingh)

### Installing

Install using your favourite package manager, e.g. packer:
```lua
use 'B4mbus/oxocarbon-lua.nvim'
```
or plug:
```vim
Plug 'B4mbus/oxocarbon-lua.nvim'
```

### Using

If you are using lua and the newest `0.8.0` neovim version do:
```lua
vim.cmd.colorscheme 'oxocarbon-lua'
```
Otherwise:
```lua
vim.cmd 'colorscheme oxocarbon'
```

If you have a vimscript configuration this will get the theme running:
```vim
colorscheme oxocarbon-lua
```
