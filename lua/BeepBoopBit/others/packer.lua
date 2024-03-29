return require("packer").startup(
	function()
		-- Packer Managing itself
		use ("wbthomason/packer.nvim")
		-- Important Dependencies
		use ("nvim-lua/plenary.nvim")

		-- Telescope
		use ({
			"nvim-telescope/telescope.nvim",
			branch = "0.1.x",
			requires = {
				{"BurntSushi/ripgrep"},
				{"sharkdp/fd"},
				{"nvim-tree/nvim-web-devicons"},
				{
					"nvim-telescope/telescope-fzf-native.nvim",
					build = "make",
					conf = function()
						return vim.fn.executable "make" == 1
					end
				}
			}
		})

		-- Git
		use ("tpope/vim-fugitive")
		use ("tpope/vim-rhubarb")
		use ("tpope/vim-sleuth")

		-- LSP and Autocompletion
		use ({
			"VonHeikemen/lsp-zero.nvim",
			branch = "v2.x",
			requires = {
				-- LSP
				{"neovim/nvim-lspconfig"},
				{"williamboman/mason.nvim"},
				{"williamboman/mason-lspconfig.nvim"},
				-- Autocompletion
				{"hrsh7th/nvim-cmp"},
				{"hrsh7th/cmp-nvim-lsp"},
				{"L3MON4D3/LuaSnip"}
			}
		})

		-- Themes and Colors
		use ("AlexvZyl/nordic.nvim")
		use ("rebelot/kanagawa.nvim")
		use ("nyoom-engineering/oxocarbon.nvim")
		use ("NvChad/nvim-colorizer.lua")
		use { "catppuccin/nvim", as = "catppuccin" }

		-- Treesitter
		use ("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
		
		-- AI
		use ("zbirenbaum/copilot.lua")

		-- Debugging
		use	({
			"mfussenegger/nvim-dap",
			requires = {
				{"theHamsta/nvim-dap-virtual-text"},
				{"rcarriga/nvim-dap-ui"}
			}
		})
		-- OPT
		use ("mfussenegger/nvim-dap-python")

		-- Status Line
		use({
			"glepnir/galaxyline.nvim",
			branch = "main",
			config = function()
				require("BeepBoopBit.others.statusline")
			end,
			-- some optional icons
			requires = {
				{"kyazdani42/nvim-web-devicons"},
				{"SmiteshP/nvim-navic"},
				{"mfussenegger/nvim-dap"}
			}
		})
	end
)
