require('stabline').setup {
  style = "slant", -- others: arrow, slant, bubble
	stab_right = "",
	-- stab_right = "", 
  	-- stab_left = " ✻",
  	stab_left = "",

	bg = "#3a4040",
	fg = "#ABB2BF",
	inactive_fg = "grey",
	inactive_bg = "#282C34",
	stab_bg = "#282C34",

	font_active = "bold",
	exclude_fts = { 'NvimTree', 'dashboard', 'lir' },
	stab_start  = "",   -- The starting of stabline
	stab_end    = "",
  icon  = "  ",
}
