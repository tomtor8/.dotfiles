require('staline').setup {
  defaults = {
    expand_null_ls = false, -- This expands out all the null-ls sources to be shown
    right_separator = "",
    left_separator = "",
    -- right_separator ="▊",
    -- left_separator ="▊",
    full_path = false,
    line_column = "[%l/%L] c:%c ", -- `:h stl` to see all flags.

    fg = "#000000", -- Foreground text color.
    bg = "none", -- Default background is transparent.
    inactive_color = "#303030",
    inactive_bgcolor = "none",
    true_colors = true, -- true lsp colors.
    font_active = "none", -- "bold", "italic", "bold,italic", etc

    mod_symbol = "  ",
    lsp_client_symbol = " ",
    branch_symbol = " ",
    -- cool_symbol     = " ",       -- Change this to override default OS icon.
    null_ls_symbol = "" -- A symbol to indicate that a source is coming from null-ls
  },
  mode_colors = {
    n = "#98C379",
    i = "#56B6C2",
    c = "#E06C75",
    v = "#61AFEF",
    s = "#E5C07B",
    r = "#C678DD" -- etc..
  },
  mode_icons = {
    n = " ",
    i = " ",
    c = " ",
    v = " " -- etc..
  },
  sections = {
    left = {'-mode', 'right_sep', 'branch'},
    mid = {'cwd'},
    right = {'lsp_name', ' ', 'lsp', 'left_sep', '-line_column'}
  },
  special_table = {
    NvimTree = {'NvimTree', ' '},
    packer = {'Packer', ' '} -- etc
  },
  lsp_symbols = {Error = " ", Info = " ", Warn = " ", Hint = " "}
}
