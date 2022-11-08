require'alpha'.setup(require'alpha.themes.startify'.config)
local startify = require('alpha.themes.startify')
startify.section.bottom_buttons.val = {
	-- startify.button('e', 'New File', ':ene <bar> startinsert<cr>'),
	startify.button('k', 'Keybindings', ':e ~/.config/nvim/lua/keybindings.lua<cr>'),
	startify.button('w', 'WhichKey', ':e ~/.config/nvim/lua/which_key_maps.lua<cr>'),
	startify.button('f', 'Find Files', ':Telescope find_files<cr>'),
    startify.button('q', 'Quit Nvim', ':qa<cr>'),
}

-- hide tabline and statusline on startup screen
vim.api.nvim_create_augroup("alpha_tabline", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	group = "alpha_tabline",
	pattern = "alpha",
	command = "set showtabline=0 laststatus=0 noruler",
})

vim.api.nvim_create_autocmd("FileType", {
	group = "alpha_tabline",
	pattern = "alpha",
	callback = function()
	vim.api.nvim_create_autocmd("BufUnload", {
		group = "alpha_tabline",
		buffer = 0,
		command = "set showtabline=2 ruler laststatus=3",
	})
	end,
})

vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])