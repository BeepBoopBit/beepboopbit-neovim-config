local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({

    -- Essentials
    {"nvim-lua/plenary.nvim"},
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = {
            {"nvim-lua/plenary.nvim"},
            {"BurntSushi/ripgrep"},
            {"sharkdp/fd"},
            {"nvim-tree/nvim-web-devicons"},
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
                config = function()
                    return vim.fn.executable "make" == 1
                end
            }
        }
    },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    },
    {
        "nvim-treesitter/nvim-treesitter"
    },
    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      event = "InsertEnter"
    },

    -- UI/UX
	{
			"glepnir/galaxyline.nvim",
			branch = "main",
			config = function()
				require("BeepBoopBit.others.statusline")
			end,
			dependencies = {
				{"nvim-tree/nvim-web-devicons"},
				{"SmiteshP/nvim-navic"},
				{"mfussenegger/nvim-dap"}
			}
	},
    {
		"mfussenegger/nvim-dap",
			dependencies = {
				{"theHamsta/nvim-dap-virtual-text"},
				{"rcarriga/nvim-dap-ui"},
				{"nvim-neotest/nvim-nio"},
                {"mfussenegger/nvim-dap-python"}
			}
    },
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },

    -- Others
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = {
            {"nvim-lua/plenary.nvim"}
        }
    },
    {
        'crusj/bookmarks.nvim',
        branch = 'main',
        dependencies = { 'nvim-web-devicons' },
        config = function()
            require("telescope").load_extension("bookmarks")
        end
    },
    {'rasulomaroff/reactive.nvim'},

    -- Non Essential
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {}
    },
    {
      "shellRaining/hlchunk.nvim",
      event = { "UIEnter" },
      dependencies = {
          {"prichrd/netrw.nvim"}
      }
    },
});
