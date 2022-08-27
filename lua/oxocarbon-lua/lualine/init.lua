local issue_lack_of_lualine_notif = function()
  vim.notify_once(
    'The "nvim-lualine/lualine.nvim" plugin is not installed, but vim.g.oxocarbon_lua_lualine_theme is set to"'
    .. vim.g.oxocarbon_lua_lualine_theme 
    .. '".',
    vim.log.levels.ERROR,
    {
      title = 'oxocarbon-lua.nvim',
    }
  )
end

local set_lualine_theme = function(colors, lualine_mod)
  local themes = require 'oxocarbon-lua.lualine.themes'
  local theme = themes.get_theme(colors, vim.g.oxocarbon_lua_lualine_theme)

  lualine_mod.setup {
    options = {
      theme = theme,
    },
  }
end


local Lualine = {}

Lualine.setup = function(colors)
  local lualine_present, lualine_mod = pcall(require, 'lualine')

  if not lualine_present then
    issue_lack_of_lualine_notif()
  else
    set_lualine_theme(colors, lualine_mod)
  end
end

return Lualine
