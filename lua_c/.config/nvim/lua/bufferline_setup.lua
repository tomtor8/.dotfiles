require("bufferline").setup {
options = {
-- Use nvim built-in lsp
numbers = "none",
diagnostics = "nvim_lsp",
separator_style = "slant",
sort_by = "directory",
-- Get out of the way on the left nvim-tree The location of
offsets = {{
filetype = "NvimTree",
text = "File Explorer",
highlight = "Directory",
text_align = "left"
}}
}
}