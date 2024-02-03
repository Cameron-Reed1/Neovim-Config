vim.filetype.add({ extension = { templ = "templ" } })


local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

local lsp_config = require('lspconfig')
lsp_config.lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

