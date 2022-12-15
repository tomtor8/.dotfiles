require('stabline').setup {
  style = "slant", -- others: arrow, slant, bubble
  stab_right = "",
  -- stab_right = "", 
  -- stab_left = " ✻",
  stab_left = "",

  bg = "#979eab",
  fg = "#282c34",
  inactive_fg = "#abb2bf",
  -- inactive_bg = "#282C34",
  inactive_bg = "#282c34",
  stab_bg = "#282C34",

  font_active = "bold",
  exclude_fts = {'NvimTree', 'dashboard', 'lir'},
  stab_start = "", -- The starting of stabline
  stab_end = "",
  icon = "  "
}
