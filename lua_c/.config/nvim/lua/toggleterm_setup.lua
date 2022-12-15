require("toggleterm").setup {
  -- size = 20,
  function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  -- open_mapping = [[c-\>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  persist_size = true,
  direction = "horizontal",
  persist_mode = true,
  close_on_exit = true,
  float_opts = {border = "double", width = 40, height = 20, winblend = 3}
}
