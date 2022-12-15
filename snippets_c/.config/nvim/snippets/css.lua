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

local group = vim.api.nvim_create_augroup('Lua Snippets', {clear = true})
local file_pattern = '*.css'

-- basic Snippets --
-- local printPy = s('print', {
-- t('print("'),
-- i(1, "text"), -- position and placeholder text
-- t('")')
-- --	t({ '', 'This is another text.' }), --table creates new line with ''
-- --	i(2,'second placeholder'),
-- })
-- table.insert(snippets, printPy)

-- snippets with format fmt function --
-- curly braces are placeholders for 1, 2, 3
-- add 2 braces to write curly braces
-- i is insert node, c is choice node, t is text node

local bracketExpand = s('br', fmt([[
{{
  {}: ;
}}
]], {i(1, 'property')}))

table.insert(snippets, bracketExpand)

return snippets, autosnippets

