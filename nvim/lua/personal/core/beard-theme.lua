-- -- Colorscheme generated by https://github.com/arcticlimer/djanho
-- vim.cmd[[highlight clear]]
--
-- local highlight = function(group, bg, fg, attr)
--     fg = fg and 'guifg=' .. fg or ''
--     bg = bg and 'guibg=' .. bg or ''
--     attr = attr and 'gui=' .. attr or ''
--
--     vim.api.nvim_command('highlight ' .. group .. ' '.. fg .. ' ' .. bg .. ' '.. attr)
-- end
--
-- local link = function(target, group)
--     vim.api.nvim_command('highlight! link ' .. target .. ' '.. group)
-- end
--
-- local Color17 = '#4e545f'
-- local Color4 = '#ffd866'
-- local Color16 = '#4b5055'
-- local Color1 = '#676b72'
-- local Color7 = '#a9dc76'
-- local Color18 = '#656b78'
-- local Color19 = '#25282d'
-- local Color11 = '#2A2D33'
-- local Color9 = '#ff6188'
-- local Color2 = '#fc6a67'
-- local Color5 = '#6d7075'
-- local Color12 = '#76797f'
-- local Color20 = '#9AA2A6'
-- local Color0 = '#b7d175'
-- local Color14 = '#3c473c'
-- local Color15 = '#49363a'
-- local Color6 = '#78e8c6'
-- local Color3 = '#78dce8'
-- local Color13 = '#dee0e4'
-- local Color8 = '#ab9df2'
-- local Color10 = '#fc9867'
--
-- highlight('Type', nil, Color0, nil)
-- highlight('Comment', nil, Color1, 'italic')
-- highlight('Constant', nil, Color2, nil)
-- highlight('Function', nil, Color3, nil)
-- highlight('Conditional', nil, Color4, nil)
-- highlight('Conditional', nil, Color4, nil)
-- highlight('Repeat', nil, Color4, nil)
-- highlight('Operator', nil, Color5, nil)
-- highlight('Type', nil, Color6, nil)
-- highlight('String', nil, Color7, nil)
-- highlight('Type', nil, Color8, nil)
-- highlight('Identifier', nil, Color9, nil)
-- highlight('Number', nil, Color10, nil)
-- highlight('StatusLine', Color12, Color11, nil)
-- highlight('WildMenu', Color11, Color13, nil)
-- highlight('Pmenu', Color11, Color13, nil)
-- highlight('PmenuSel', Color13, Color11, nil)
-- highlight('PmenuThumb', Color11, Color13, nil)
-- highlight('DiffAdd', Color14, nil, nil)
-- highlight('DiffDelete', Color15, nil, nil)
-- highlight('Normal', Color11, Color13, nil)
-- highlight('Visual', Color16, nil, nil)
-- highlight('CursorLine', Color16, nil, nil)
-- highlight('ColorColumn', Color16, nil, nil)
-- highlight('SignColumn', Color11, nil, nil)
-- highlight('LineNr', nil, Color17, nil)
-- highlight('TabLine', Color19, Color18, nil)
-- highlight('TabLineSel', Color20, Color11, nil)
-- highlight('TabLineFill', Color19, Color18, nil)
-- highlight('TSPunctDelimiter', nil, Color13, nil)
--
-- link('TSOperator', 'Operator')
-- link('Macro', 'Function')
-- link('TSRepeat', 'Repeat')
-- link('Repeat', 'Conditional')
-- link('TSConstant', 'Constant')
-- link('Conditional', 'Operator')
-- link('TSKeyword', 'Keyword')
-- link('TSTagDelimiter', 'Type')
-- link('CursorLineNr', 'Identifier')
-- link('TSFunction', 'Function')
-- link('TSString', 'String')
-- link('TSParameter', 'Constant')
-- link('TSParameterReference', 'TSParameter')
-- link('TSTag', 'MyTag')
-- link('TSPunctBracket', 'MyTag')
-- link('TSNamespace', 'TSType')
-- link('TSLabel', 'Type')
-- link('NonText', 'Comment')
-- link('Operator', 'Keyword')
-- link('TSComment', 'Comment')
-- link('TSPunctSpecial', 'TSPunctDelimiter')
-- link('Whitespace', 'Comment')
-- link('TSConstBuiltin', 'TSVariableBuiltin')
-- link('TelescopeNormal', 'Normal')
-- link('TSFloat', 'Number')
-- link('TSFuncMacro', 'Macro')
-- link('TSNumber', 'Number')
-- link('TSField', 'Constant')
-- link('TSProperty', 'TSField')
-- link('TSType', 'Type')
-- link('Folded', 'Comment')
-- link('TSConditional', 'Conditional')