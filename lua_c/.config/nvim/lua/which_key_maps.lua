local wk = require("which-key")

local mappings = {
  f = {
    name = "FILE&FMT",
    f = {"<cmd>Telescope find_files<cr>", "Find File"}, -- % is a placeholder for the full path of the buffer file
    g = {"<cmd>Telescope live_grep<cr>", "Find Text"},
    n = {"<cmd>NnnPicker<cr>", "NNN picker"},
    p = {":w<cr>:!npx prettier --write %<cr>", "Prettier: i Ctrl+S"},
    r = {"<cmd>Telescope oldfiles theme=dropdown<cr>", "Recent Files"}, -- additional options for creating the keymap
    s = {":w<cr>:!shfmt -w %<cr>", "Shfmt: shellscript"},
    t = {"<cmd>NvimTreeToggle<cr>", "Toggle NvimTree"}
  },
  g = {
    name = "Go to File",
    k = {"<cmd>e ~/.config/kitty/kitty.conf<cr>", "kitty config"},
    n = {"<cmd>e ~/.config/nnn/nnn.config<cr>", "nnn config"},
    w = {"<cmd>e ~/.config/nvim/lua/which_key_maps.lua<cr>", "which key maps"},
    z = {"<cmd>e ~/.zshrc<cr>", "zshrc"}
  },
  l = {name = "LINT", s = {":w<cr>:!shellcheck %<cr>", "Shellcheck"}},
  q = {
    name = "Quit&Nosave",
    q = {"<cmd>q!<cr>", "Quit Buffer"},
    a = {"<cmd>qa!<cr>", "Quit All Buffers"}
  },
  s = {
    name = "Surround", -- optional group name
    d = { 'viw<esc>a"<esc>bi"<esc>lel', "Word double quote" },
    s = { "viw<esc>a'<esc>bi'<esc>lel", "Word single quote" },
    p = { "viw<esc>a)<esc>bi(<esc>lel", "Word parentheses" },
    a = { "viw<esc>a><esc>bi<<esc>lel", "Word angle brackets" },
    b = { "viw<esc>a]<esc>bi[<esc>lel", "Word square brackets" },
    c = { "viw<esc>a}<esc>bi{<esc>lel", "Word curly brackets" },
    v = { "", "S - in visual mode" },
    e = { "", "ds - delete surr" },
    f = { "", "dss - delete any bracket" },
    g = { "", "dsq - delete quotes" },
    h = { "", "cs - change surr" },
    i = { "", "a - angle bracket" },
    j = { "", "b - parentheses" },
    k = { "", "B - curly bracket" },
    l = { "", "r - square bracket" },
    m = { "", "s - any bracket" },
    n = { "", "q - any quotes" },
  },
  t = {
    name = "TERMINAL",
    f = {"<cmd>ToggleTerm direction=float<cr>", "Float Terminal"},
    t = {"<cmd>ToggleTerm<cr>", "Toggle Terminal"}
  },
  w = {":w<cr>", "Write file"}
}

local opts = {
  mode = "n", -- NORMAL mode
  -- prefix: use "<leader>f" for example for mapping everything related to finding files
  -- the prefix is prepended to every mapping part of `mappings`
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false -- use `nowait` when creating keymaps
}

wk.register(mappings, opts)
