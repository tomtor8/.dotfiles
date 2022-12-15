-- syntax vim.o globals, vim.bo buffer specific, vim.wo window specific
-- vim.opt. is working for almost everything e.g. vim.opt.termguicolors = true
-- or vim.cmd[[vim command]]
-- enables syntax highlighting
vim.cmd [[syntax on]]
vim.cmd('filetype plugin indent on')
-- disable shortmessages
vim.o.shortmess = 'nmtToOFcw'

vim.o.fileencoding = 'utf-8'
-- command line height
vim.o.cmdheight = 1
---- number of spaces in a <Tab>, turns tabs to spaces
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.smartindent = true
-- vim.opt.indentexpr = ""
vim.opt.shiftwidth = 2

vim.o.timeoutlen = 500
-- enable system clipboard with xclip on linux or pbcopy on mac, just type 'p' in normal mode, clipboard also works in insert mode with ctrl shift v
-- in visual mode select text and type 'y' this puts it into system clipboard
vim.o.clipboard = 'unnamedplus'

-- enable relative line numbering
vim.wo.number = true
vim.wo.relativenumber = true

-- enable mouse support
vim.o.mouse = "a"

-- better colors
vim.opt.termguicolors = true

-- hightlights the matched text pattern when searching
vim.o.incsearch = true

-- open splits intuitively
vim.o.splitbelow = true
vim.o.splitright = true

vim.opt.showtabline = 2
-- disable show mode at the bottom

vim.opt.laststatus = 3

vim.o.showmode = false

vim.o.whichwrap = 'b,<,>'
vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.breakindent = true

-- popup menu height
vim.o.pumheight = 20
-- navigate buffers without losing unsaved work
vim.o.hidden = true

vim.wo.signcolumn = 'number'

-- start scrolling when 8 lines from top or bottom
vim.o.scrolloff = 20

-- case insensitive search unless capital letters are used
vim.o.ignorecase = true
vim.o.smartcase = true

-- colorschemes
-- vim.cmd[[colorscheme gruvbox-material]]

-- loading a theme
require('onedark').load()

-- indent_blankline_options
vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

-- spell check
-- vim.cmd[[set spell spelllang=en_us]]
