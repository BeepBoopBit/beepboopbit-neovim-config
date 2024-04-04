local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {
        "clangd", "emmet_language_server", "html", "lua_ls"
    },
    automatic_installation = true,
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require("lspconfig").lua_ls.setup(lua_opts)
            require("lspconfig").clangd.setup({
                on_attach = on_attach,
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
                cmd = {
                    "clangd",
                    "--offset-encoding=utf-16",
                },
            })
        end,
    },
})
