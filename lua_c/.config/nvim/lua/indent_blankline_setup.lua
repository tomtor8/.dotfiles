require("indent_blankline").setup {
  -- for example, context is off by default, use this to turn it on
  show_current_context = true,
  show_current_context_start = true,
  space_char_blankline = ' ',
  buftype_exclude = {'terminal'},
  filetype_exclude = {'alpha', 'text', 'packer', 'NvimTree'}
}
