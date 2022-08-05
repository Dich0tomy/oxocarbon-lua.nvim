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
vim.cmd 'colorscheme oxocarbon-lua'
```

If you have a vimscript configuration this will get the theme running:
```vim
colorscheme oxocarbon-lua
```

### Additional configuration

#### Disabling terminal colors
The original theme sets the terminal colors to oxocarbon's pallete, but it seems like a lot of tools use only the few first (black and white), which can make the usage of the terminal really annoying.
You can disable hijacking the terminal colors by setting a global variable `oxocarbon_lua_keep_terminal` like so:
```lua
vim.g.oxocarbon_lua_keep_terminal = true
```
or
```vim
let g:oxocarbon_lua_keep_terminal = 1
```

#### Disabling italics
Some people just don't like them - on terminals they often trim the text.
```lua
vim.g.oxocarbon_lua_disable_italic = true
```
or
```vim
let g:oxocarbon_lua_disable_italic = 1
```
