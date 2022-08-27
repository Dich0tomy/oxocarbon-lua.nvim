local get_colors = function()
	local colors_path = 'oxocarbon-lua.colors'
	local background = vim.api.nvim_get_option('background')

	if background == 'dark' then
		return require(colors_path).dark
	elseif background == 'light' then
		return require(colors_path).light
	else
		vim.notify('Error: Background not set.', vim.log.levels.ERROR)
		return nil
	end
end

local setup_lualine_theme = function(colors)
  if vim.g.oxocarbon_lua_lualine_theme then
    local errors = require 'oxocarbon-lua.errors'

    if type(vim.g.oxocarbon_lua_lualine_theme) ~= 'number' then
      errors.issue_oxocarbon_error(
        'The type of vim.g.oxocarbon_lua_lualine_theme must be a number.'
      )
    end

    if not (1 <= vim.g.oxocarbon_lua_lualine_theme and vim.g.oxocarbon_lua_lualine_theme <= 2) then
      errors.issue_oxocarbon_error(
        'The value of vim.g.oxocarbon_lua_lualine_theme must be between 1 and 2.'
      )
    end

    require 'oxocarbon-lua.lualine'.setup(colors)
  end
end

return {
	load = function()
		local colors = get_colors()
		if not colors then
			return
		end

    vim.g.colors_name = 'oxocarbon-lua'

		vim.api.nvim_set_option('termguicolors', true)

    local theme = require 'oxocarbon-lua.theme'
		theme.set_terminal_colors(colors)
		theme.set_general_highlights(colors)

    setup_lualine_theme(colors)
	end
}
