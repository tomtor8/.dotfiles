local ccc = require("ccc")
local mapping = ccc.mapping
ccc.setup({
    -- Your favorite settings
    bar_char = "◼︎",
    point_char = "✒︎ ",
    point_color = "grey",
    alpha_show = "show", -- auto, show, hide
    highlighter = {
        ---@type boolean
        auto_enable = true,
        ---@type integer
        max_byte = 100 * 1024, -- 100 KB
        ---@type string[]
        filetypes = { "css", "html" },
        ---@type string[]
        excludes = {},
    },
    
})
