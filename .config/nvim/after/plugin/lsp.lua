-- Neoconf needs to be before lsp-config
require("neoconf").setup({})

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {"lua_ls", "rnix", "jsonls"},
  handlers = {
    lsp_zero.default_setup,
  },
})

lsp_zero.setup_servers({'rust_analyzer', 'ruff_lsp', 'pylsp', 'lua_ls', 'rnix'})
