local lsp_zero_config = {
  call_servers = 'global',
}

local lsp_servers = {
  'zls',
  'nixd',
  'gopls',
  'pylsp',
  'templ',
  'clangd',
  'ansiblels',
  'rust_analyzer',
}

vim.filetype.add({ extension = { templ = "templ" } })


local lsp = require('lsp-zero').preset({})
lsp.set_preferences(lsp_zero_config)

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup_servers(lsp_servers)

local lsp_config = require('lspconfig')
lsp_config.lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

