-- examples for your init.lua
-- empty setup using defaults
-- require("nvim-tree").setup()
------ keyboard shortcuts -----
-- 'a' create a new file
-- 'c' copy a file to clipboard
-- 'x' cut a file to clipboard
-- 'p' paste a file 
-- 'm' mark a bookmark
-- 'd' delete a file
-- 'u' go up a parent folder
-- ctrl + ] CD into a directory, very useful
-- 'H' toggle hidden files
-- 'Y' copy relative path to system clipboard
-- 'gy' copy absolute path to system clipboard
-- OR setup with some options
--
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
