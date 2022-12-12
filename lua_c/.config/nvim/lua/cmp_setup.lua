-- vim.g.completeopt="menu,menuone,noselect,noinsert"
-- vim-snip --

local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup {
  snippet = {
    expand = function(args)
    luasnip.lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert {
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<Esc>"] = cmp.mapping.close(),
    ["<Tab>"] = cmp.mapping.confirm { select = true },
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer", keyword_length = 3, max_item_count = 5 },
    { name = "path" },
    { name = "emoji", insert = true },
  },
  completion = {
  	keyword_length = 2,
  	completeopt = "menu,noselect",
  },
  view = {
  	entries = "custom",
  },
}

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

cmp.setup.filetype("tex", {
	sources = {
		{ name = "luasnip" },
		{ name = "buffer", keyword_length = 3 },
		{ name = "path" },
	},
})

-- set up lspconfig
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require'lspconfig'.html.setup {
  capabilities = capabilities
}
require'lspconfig'.cssls.setup {
  capabilities = capabilities
}
  
require'lspconfig'.pyright.setup {
  capabilities = capabilities
}

require'lspconfig'.sumneko_lua.setup {
  capabilities = capabilities
}

require'lspconfig'.tsserver.setup {
  capabilities = capabilities,
  root_dir = function() return vim.loop.cwd() end
}

require'lspconfig'.bashls.setup {
   capabilities = capabilities
}

require'lspconfig'.marksman.setup {
  capabilities = capabilities
}

require'lspconfig'.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})
