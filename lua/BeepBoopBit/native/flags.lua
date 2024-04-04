-- Number Display
vim.opt.relativenumber = true
vim.opt.nu = true

-- Tab and Spacing Configuration
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Let nvim helps with indenting
vim.opt.smartindent = true

-- Disable Word Wrap
vim.opt.wrap = false

-- Make sure only the cursor searching is highlighted
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Enable GUI Colors
vim.opt.termguicolors = true

-- Make sure that you always have '8' lines below when scrolling, unless it's the end of the file
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Others
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = ' '

-- Folds
vim.opt.foldmethod = "expr"
vim.opt.foldlevel = 20
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
--vim.opt.foldclose = "all"
