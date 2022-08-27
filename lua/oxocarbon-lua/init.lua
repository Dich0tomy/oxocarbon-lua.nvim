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
	end
}
