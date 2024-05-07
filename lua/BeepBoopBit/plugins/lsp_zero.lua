return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
        -- LSP Support
        { "neovim/nvim-lspconfig" },             -- Required
        { "williamboman/mason.nvim" },           -- Optional
        { "williamboman/mason-lspconfig.nvim" }, -- Optional
        { "hrsh7th/nvim-cmp" },                  -- Required
        { "hrsh7th/cmp-nvim-lsp" },              -- Required
        { "L3MON4D3/LuaSnip" }                   -- Required
    },
    config = function()
        local cmp = require('cmp')
        local cmp_select_opts = { behavior = cmp.SelectBehavior.Select }

        local lsp_zero = require('lsp-zero')
        local cmp_format = lsp_zero.cmp_format()

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
                        -- on_attach = on_attach,
                        capabilities = require("cmp_nvim_lsp").default_capabilities(),
                        cmd = {
                            "clangd",
                            "--offset-encoding=utf-16",
                        },
                    })
                end,
            },
        })

        cmp.setup({
            sources = {
                { name = 'nvim_lsp' },
            },
            mapping = {
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
                ['<Up>'] = cmp.mapping.select_prev_item(cmp_select_opts),
                ['<Down>'] = cmp.mapping.select_next_item(cmp_select_opts),
                ['<C-p>'] = cmp.mapping(function()
                    if cmp.visible() then
                        cmp.select_prev_item(cmp_select_opts)
                    else
                        cmp.complete()
                    end
                end),
                ['<C-n>'] = cmp.mapping(function()
                    if cmp.visible() then
                        cmp.select_next_item(cmp_select_opts)
                    else
                        cmp.complete()
                    end
                end),
            },
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            window = {
                documentation = {
                    max_height = 15,
                    max_width = 60,
                }
            },
            formatting = cmp_format,
        })
    end
}
