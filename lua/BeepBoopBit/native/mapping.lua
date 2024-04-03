-- Set Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set Explorer
vim.keymap.set('n', "<leader>ef", vim.cmd.Ex, {desc = "[E]xplore [F]iles"})


vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'L', "><CR>")
vim.keymap.set('v', 'H', "<<CR>")

-- Yank to the Clipboard
vim.keymap.set('v', "<leader>y", "\"+y")
vim.keymap.set('n', "<leader>p", "\"*p")


-- Debugger
vim.keymap.set('n', "<leader>dap", ":lua require('dapui').toggle()<CR>")
vim.keymap.set('n', "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set('n', "<leader>dr", ":lua require'dap'.repl.toggle()<CR>")
vim.keymap.set('n', "<leader>dn", ":lua require'dap'.step_over()<CR>")
vim.keymap.set('n', "<leader>di", ":lua require'dap'.step_into()<CR>")
vim.keymap.set('n', "<leader>do", ":lua require'dap'.step_out()<CR>")
vim.keymap.set('n', "<leader>dc", ":lua require'dap'.continue()<CR>")
vim.keymap.set('n', "<leader>dpc", ":lua require'dap'.close()<CR>")
vim.keymap.set('n', "<leader>dpo", ":lua require'dap'.open()<CR>")

-- Formatter
vim.keymap.set('n', "<leader>lf", ":LspZeroFormat<CR>")
