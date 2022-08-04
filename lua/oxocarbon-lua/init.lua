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

local set_terminal_colors = function(colors)
	vim.api.nvim_set_var('terminal_color_background', colors[1])
	vim.api.nvim_set_var('terminal_color_foreground', colors[5])

	for x in 1,16 do
		vim.api.nvim_set_var('terminal_color_', colors[x])
	end
end

local extend_with_attributes = function(orig, attrs)
	for _, attr in ipairs(attrs) do
		orig[attr] = 1
	end
	return orig
end

return {
	load = function()
		vim.api.nvim_set_option('termguicolors', true)

		local colors = get_colors()

		if not colors then
			return
		end

		local highlight = function(name, fg, bg, attrs)
			vim.api.nvim_set_hl(
				0, 
				name, 
				extend_with_attributes(
					{ fg = fg, ['fg#'] = fg, bg = bg, ['bg#'] = bg }, 
					attrs
				)
			)
		end

		set_terminal_colors(colors)

		-- editor
		highlight('ColorColumn', 18, 2)
    highlight('Cursor', 1, 5)
    highlight('CursorLine', 18, 2)
    highlight('CursorColumn', 18, 2)
    highlight('CursorLineNr', 5, 18)
    highlight('QuickFixLine', 18, 2)
    highlight('Error', 5, 12)
    highlight('LineNr', 4, 1)
    highlight('NonText', 3, 18)
    highlight('Normal', 5, 1)
    highlight('Pmenu', 5, 2)
    highlight('PmenuSbar', 5, 2)
    highlight('PmenuSel', 9, 3)
    highlight('PmenuThumb', 9, 3)
    highlight('SpecialKey', 4, 18)
    highlight('Visual', 18, 3)
    highlight('VisualNOS', 18, 3)
    highlight('TooLong', 18, 3)
    highlight('Debug', 14, 18)
    highlight('Macro', 8, 18)
    highlight('MatchParen', 18, 3, {'underline'})
    highlight('Bold', 18, 18, {'bold'})
    highlight('Italic', 18, 18, {'italic'})
    highlight('Underlined', 18, 18, {'underline'})

		-- diagnostics
    highlight('DiagnosticWarn', 9, 18)
    highlight('DiagnosticError', 11, 18)
    highlight('DiagnosticInfo', 5, 18)
    highlight('DiagnosticHint', 5, 18)
    highlight('DiagnosticUnderlineWarn', 9, 18, {'undercurl'})
    highlight('DiagnosticUnderlineError', 11, 18, {'undercurl'})
    highlight('DiagnosticUnderlineInfo', 5, 18, {'undercurl'})
    highlight('DiagnosticUnderlineHint', 5, 18, {'undercurl'})

    -- lsp
    highlight('LspReferenceText', 18, 4)
    highlight('LspReferenceread', 18, 4)
    highlight('LspReferenceWrite', 18, 4)
    highlight('LspSignatureActiveParameter', 9, 18)

    -- gutter
    highlight('Folded', 4, 2)
    highlight('FoldColumn', 4, 1)
    highlight('SignColumn', 2, 1)

    -- navigation
    highlight('Directory', 9, 18)

    -- prompts
    highlight('EndOfBuffer', 2, 18)
    highlight('ErrorMsg', 5, 12)
    highlight('ModeMsg', 5, 18)
    highlight('MoreMsg', 9, 18)
    highlight('Question', 5, 18)
    highlight('Substitute', 5, 18)
    highlight('WarningMsg', 1, 14)
    highlight('WildMenu', 9, 2)

    -- search
    highlight('IncSearch', 7, 11)
    highlight('Search', 2, 9)

    -- tabs
    highlight('TabLine', 5, 2)
    highlight('TabLineFill', 5, 2)
    highlight('TabLineSel', 9, 4)

    -- window
    highlight('Title', 5, 18)
    highlight('VertSplit', 2, 1)

    -- regular syntax
    highlight('Boolean', 10, 18)
    highlight('Character', 15, 18)
    highlight('Comment', 4, 18)
    highlight('Conceal', 18, 18)
    highlight('Conditional', 10, 18)
    highlight('Constant', 5, 18)
    highlight('Decorator', 13, 18)
    highlight('Define', 10, 18)
    highlight('Delimeter', 7, 18)
    highlight('Exception', 10, 18)
    highlight('Float', 16, 18)
    highlight('Function', 9, 18)
    highlight('Identifier', 5, 18)
    highlight('Include', 10, 18)
    highlight('Keyword', 10, 18)
    highlight('Label', 10, 18)
    highlight('Number', 16, 18)
    highlight('Operator', 10, 18)
    highlight('PreProc', 10, 18)
    highlight('Repeat', 10, 18)
    highlight('Special', 5, 18)
    highlight('SpecialChar', 5, 18)
    highlight('SpecialComment', 9, 18)
    highlight('Statement', 10, 18)
    highlight('StorageClass', 10, 18)
    highlight('String', 15, 18)
    highlight('Structure', 10, 18)
    highlight('Tag', 5, 18)
    highlight('Todo', 14, 18)
    highlight('Type', 10, 18)
    highlight('Typedef', 10, 18)

    -- treesitter
    highlight('TSAnnotation', 13, 18)
    highlight('TSAttribute', 16, 18)
    highlight('TSBoolean', 10, 18)
    highlight('TSCharacter', 15, 18)
    highlight('TSConstructor', 10, 18)
    highlight('TSConditional', 10, 18)
    highlight('TSConstant', 15, 18)
    highlight('TSConstBuiltin', 8, 18)
    highlight('TSConstMacro', 8, 18)
    highlight('TSError', 12, 18)
    highlight('TSException', 16, 18)
    highlight('TSField', 5, 18)
    highlight('TSFloat', 16, 18)
    highlight('TSFuncBuiltin', 13, 18)
    highlight('TSFuncMacro', 8, 18)
    highlight('TSInclude', 10, 18)
    highlight('TSKeyword', 10, 18)
    highlight('TSKeywordFunction', 9, 18)
    highlight('TSKeywordOperator', 9, 18)
    highlight('TSLabel', 16, 18)
    highlight('TSMethod', 8, 18)
    highlight('TSNamespace', 5, 18)
    highlight('TSNumber', 16, 18)
    highlight('TSOperator', 10, 18)
    highlight('TSParameter', 5, 18)
    highlight('TSParameterReference', 5, 18)
    highlight('TSProperty', 11, 18)
    highlight('TSPunctDelimiter', 9, 18)
    highlight('TSPunctBracket', 9, 18)
    highlight('TSPunctSpecial', 9, 18)
    highlight('TSRepeat', 10, 18)
    highlight('TSString', 15, 18)
    highlight('TSStringRegex', 8, 18)
    highlight('TSStringEscape', 16, 18)
    highlight('TSTag', 5, 18)
    highlight('TSTagDelimiter', 16, 18)
    highlight('TSText', 5, 18)
    highlight('TSTitle', 11, 18)
    highlight('TSLiteral', 5, 18)
    highlight('TSType', 10, 18)
    highlight('TSTypeBuiltin', 5, 18)
    highlight('TSVariable', 5, 18)
    highlight('TSVariableBuiltin', 5, 18)
    highlight('TreesitterContext', 18, 2)
    highlight('TSStrong', 18, 18, {'bold'})
    highlight('TSComment', 4, 18, {'italic'})
    highlight('TSFunction', 13, 18, {'bold'})
    highlight('TSSymbol', 16, 18, {'bold'})
    highlight('TSEmphasis', 11, 18, {'bold'})
    highlight('TSUnderline', 11, 18, {'underline'})
    highlight('TSStrike', 11, 18, {'strikethrough'})
    highlight('TSURI', 15, 18, {'underline'})
    highlight('TSCurrentScope', 18, 18, {'bold'})

    -- neovim
    highlight('NvimInternalError', 1, 9)
    highlight('NormalFloat', 6, 17)
    highlight('FloatBorder', 17, 17)
    highlight('NormalNC', 6, 1)
    highlight('TermCursor', 1, 5)
    highlight('TermCursorNC', 1, 5)

    -- statusline/winbar
    highlight('StatusLine', 4, 1)
    highlight('StatusLineNC', 3, 1)
    highlight('StatusReplace', 1, 9)
    highlight('StatusInsert', 1, 13)
    highlight('StatusVisual', 1, 15)
    highlight('StatusTerminal', 1, 12)
    highlight('StatusLineDiagnosticWarn', 15, 1, {'bold'})
    highlight('StatusLineDiagnosticError', 9, 1, {'bold'})
    highlight('WinBar', 20, 1, {'bold'})
    highlight('StatusPosition', 20, 1, {'bold'})
    highlight('StatusNormal', 20, 1, {'underline'})
    highlight('StatusCommand', 20, 1, {'underline'})

    -- telescope
    highlight('TelescopeBorder', 17, 17)
    highlight('TelescopePromptBorder', 3, 3)
    highlight('TelescopePromptNormal', 6, 3)
    highlight('TelescopePromptPrefix', 9, 3)
    highlight('TelescopeNormal', 18, 17)
    highlight('TelescopePreviewTitle', 3, 12)
    highlight('TelescopePromptTitle', 3, 9)
    highlight('TelescopeResultsTitle', 17, 17)
    highlight('TelescopeSelection', 18, 3)
    highlight('TelescopePreviewLine', 18, 2)

    -- notify
    highlight('NotifyERRORBorder', 9, 18)
    highlight('NotifyWARNBorder', 16, 18)
    highlight('NotifyINFOBorder', 6, 18)
    highlight('NotifyDEBUGBorder', 14, 18)
    highlight('NotifyTRACEBorder', 14, 18)
    highlight('NotifyERRORIcon', 9, 18)
    highlight('NotifyWARNIcon', 16, 18)
    highlight('NotifyINFOIcon', 6, 18)
    highlight('NotifyDEBUGIcon', 14, 18)
    highlight('NotifyTRACEIcon', 14, 18)
    highlight('NotifyERRORTitle', 9, 18)
    highlight('NotifyWARNTitle', 16, 18)
    highlight('NotifyINFOTitle', 6, 18)
    highlight('NotifyDEBUGTitle', 14, 18)
    highlight('NotifyTRACETitle', 14, 18)

    -- cmp
    highlight('CmpItemAbbrMatchFuzzy', 5, 18)
    highlight('CmpItemKindInterface', 12, 18)
    highlight('CmpItemKindText', 9, 18)
    highlight('CmpItemKindVariable', 14, 18)
    highlight('CmpItemKindProperty', 11, 18)
    highlight('CmpItemKindKeyword', 10, 18)
    highlight('CmpItemKindUnit', 15, 18)
    highlight('CmpItemKindFunction', 13, 18)
    highlight('CmpItemKindMethod', 8, 18)
    highlight('CmpItemAbbrMatch', 6, 18, {'bold'})
    highlight('CmpItemAbbr', 21, 18, {'bold'})

    -- nvimtree
    highlight('NvimTreeImageFile', 13, 18)
    highlight('NvimTreeFolderIcon', 13, 18)
    highlight('NvimTreeWinSeperator', 1, 1)
    highlight('NvimTreeFolderName', 10, 18)
    highlight('NvimTreeIndentMarker', 3, 18)
    highlight('NvimTreeEmptyFolderName', 16, 18)
    highlight('NvimTreeOpenedFolderName', 16, 18)
    highlight('NvimTreeNormal', 5, 17)

    -- neogit
    highlight('NeogitBranch', 11, 18)
    highlight('NeogitRemote', 10, 18)
    highlight('NeogitDiffAddHighlight', 14, 3)
    highlight('NeogitDiffDeleteHighlight', 10, 3)
    highlight('NeogitDiffContextHighlight', 5, 2)
    highlight('NeogitHunkHeader', 5, 3)
    highlight('NeogitHunkHeaderHighlight', 5, 4)

    -- gitsigns
    highlight('GitSignsAdd', 9, 18)
    highlight('GitSignsChange', 10, 18)
    highlight('GitSignsDelete', 15, 18)

    -- parinfer
    highlight('Trailhighlight', 4, 18)

    -- hydra
    highlight('HydraRed', 13, 18)
    highlight('HydraBlue', 10, 18)
    highlight('HydraAmaranth', 11, 18)
    highlight('HydraTeal', 9, 18)
    highlight('HydraPink', 15, 18)
    highlight('HydraHint', 18, 17)

    -- dashboard
    highlight('DashboardShortCut', 11, 18)
    highlight('DashboardHeader', 16, 18)
    highlight('DashboardCenter', 15, 18)
    highlight('DashboardFooter', 9, 18)
	end
}
