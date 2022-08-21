# oxocarbon-lua.nvim

A lua rewrite of the original [oxocarbon.nvim](https://github.com/shaunsingh/oxocarbon.nvim) theme written in Rust.  
Original author: [@shaunsingh](https://github.com/shaunsingh)

## Table Of Contents

- [Installing](#installing)
- [Using](#using)
- [Additional configuration](#additional-configuration)

## Installing

Install using your favourite package manager, e.g. packer:
```lua
use 'B4mbus/oxocarbon-lua.nvim'
```
or plug:
```vim
Plug 'B4mbus/oxocarbon-lua.nvim'
```

## Using

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

## Additional configuration


<details>
	<summary><b>Disabling terminal colors</b></summary>

<br/>

The original theme sets the terminal colors to oxocarbon's pallete, but it seems like a lot of tools use only the few first (black and white), which can make the usage of the terminal really annoying.
```lua
vim.g.oxocarbon_lua_keep_terminal = true
```
or
```vim
let g:oxocarbon_lua_keep_terminal = 1
```

</details>


<details>
	<summary><b>Disabling italics</b></summary>

<br/>

```lua
vim.g.oxocarbon_lua_disable_italic = true
```
or
```vim
let g:oxocarbon_lua_disable_italic = 1
```

</details>

<details>
	<summary><b>Enabling transparency</b></summary>

<br/>

```lua
vim.g.oxocarbon_lua_transparent = true
```
or
```vim
let g:oxocarbon_lua_transparent = 1
```

</details>

<details>
	<summary><b>Alternative telescope style</b></summary>

<br/>

The original's telescope looks like this:
![Original telescope](../media/telescope-normal.png?raw=true)

With this variable set it will look like this:
![Original telescope](../media/telescope-alternative.png?raw=true)

```lua
vim.g.oxocarbon_lua_alternative_telescope = true
```
or
```vim
let g:oxocarbon_lua_alternative_telescope = 1
```

</details>
