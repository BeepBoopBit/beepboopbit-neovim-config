-- Number Display
vim.opt.relativenumber = true
vim.opt.nu = true

-- Tab and Spacing Configuration
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Let nvim helps with indenting
vim.opt.smartindent = true

-- Disable Word Wrap
vim.opt.wrap = false

-- Undo from the past
--vim.opt.swapfile = false
--vim.opt.backup = false
--vim.opt.undodir = vim.fn("HOME") .. "/.vim/undodir"
--vim.opt.undofile = true

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
