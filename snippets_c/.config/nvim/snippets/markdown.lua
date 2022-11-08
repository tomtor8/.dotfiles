local ls = require('luasnip')
local s = ls.s
local i = ls.i
local t = ls.t

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

local snippets, autosnippets = {}, {}

local group = vim.api.nvim_create_augroup('Lua Snippets', { clear = true })
local file_pattern = { '*.md', '*.markdown' }

-- basic Snippets --
local checkBox = s('checkbox', {
	t('- [ ] ')
})
table.insert(snippets, checkBox)

local checkBoxChecked = s('checkboxCheck', {
	t('- [x] ')
})
table.insert(snippets, checkBoxChecked)

local mark = s('mark', {
	t('<mark>'),
	i(1, "text"),
	t('</mark>'),
	i(2, "") -- jump out of the angle brackets
})
table.insert(snippets, mark)

local tag = s('tag', {
	t('<'),
	i(1, "li"),
	t('>'),
	i(2, ""),
	t('</'),
	i(3, "li"),
	t('>'),
	i(4, "") -- jump out of the angle brackets
})
table.insert(snippets, tag)



-- snippets with format fmt function --
-- curly braces are placeholders for 1, 2, 3
-- add 2 braces to write curly braces
-- i is insert node, c is choice node, t is text node
local pythonSnippet2 = s(
  'pythonSnippet2',
  fmt(
    [[
local {} = function({})
  {} {{ im in a curly braces}}
end
]],
    {
      i(1, 'myVar'),
      c(2, { t('firstArg'), i('secondArg') }),
      i(3, '--TODO something--'),
    }
  )
)

table.insert(snippets, pythonSnippet2)

return snippets, autosnippets

