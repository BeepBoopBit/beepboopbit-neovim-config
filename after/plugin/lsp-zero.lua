local lsp = require('lsp-zero').preset({})

lsp.preset("recommended")
lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.offsetEncoding = "utf-8"
capabilities.offset_encoding = "utf-8"
capabilities.clangd = {}
capabilities.clangd.offsetEncoding = "utf-8"
capabilities.clangd.offset_encoding= "utf-8"

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    "typos_lsp", "angularls", "bashls", "clangd", "omnisharp", "cssls",
    "dockerls", "eslint", "emmet_language_server", "html", "jsonls",
    "tsserver", "ltex", "lua_ls", "marksman", "intelephense",
    "jedi_language_server",  "sqlls", "lemminx", "yamlls"
  },
  handlers = {
    lsp.default_setup,
    require('lspconfig').clangd.setup({
      capabilities=capabilities
    })
  },
})

lsp.setup()
