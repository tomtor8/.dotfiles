-- KEYBINDINGS
-- local sets a local variable in lua
-- set space to <leader>
vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
-- jk remapped to escape
keymap('i', 'jk', '<Esc>', opts)
-- cycle through buffers forwards with tab
keymap('n', '<Tab>', ':bn<cr>', opts)
-- cycle through buffers backwards with shift tab
keymap('n', '<S-Tab>', ':bp<cr>', opts)

-- keymap('n', '<space>fs', ':write<CR>', opts)
-- toggle nvimtree
-- keymap('n', '<leader>tt', ':NvimTreeToggle<CR>', opts)
-- double ""
-- keymap('i', '"', '""<Left>', opts)
-- keymap('i', '(', '()<Left>', opts)
-- keymap('i', '[', '[]<Left>', opts)
-- keymap('i', '{', '{}<Left>', opts)
-- keymap("i", "'", "''<Left>", opts)

-- ctrl + s remapped to save file from insert mode
keymap('i', '<c-s>', '<Esc>:w<CR>', {})
-- move line up
keymap('n', '<c-k>', 'ddkP', {})
-- move line down
keymap('n', '<c-j>', 'ddp', {})

-- ctrl j, k, l, h - jump between windows in split mode
-- keymap('n', '<c-j>', '<c-w>j', opts)
-- keymap('n', '<c-h>', '<c-w>h', opts)
-- keymap('n', '<c-l>', '<c-w>l', opts)
-- keymap('n', '<c-k>', '<c-w>k', opts)

keymap('i', '<c-e>', '<c-]>', opts)
