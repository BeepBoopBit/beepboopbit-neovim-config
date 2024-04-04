-- Set Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set Explorer
vim.keymap.set('n', "<leader>ef", vim.cmd.Ex, { desc = "[E]xplore [F]iles" })


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
vim.keymap.set('n', "<leader>lf", ":lua vim.lsp.buf.format()<CR>")


-- Terminal Mapping

-- [ Terminal Navigation ]
vim.keymap.set('t', "<C-w>h", "<C-\\><C-n><C-w>h")
vim.keymap.set('t', "<C-w>l", "<C-\\><C-n><C-w>l")
vim.keymap.set('t', "<C-w>j", "<C-\\><C-n><C-w>j")
vim.keymap.set('t', "<C-w>k", "<C-\\><C-n><C-w>k")

-- [ Remove Terminal ]
vim.keymap.set('n', "<leader>mr", "<C-w>l<C-\\><C-n>:q<CR>")

-- [ Make Terminal ]
vim.keymap.set('n', "<leader>mt", "<C-w><C-v><C-w>l:ter<CR><S-i>") -- Create terminal on the right and enter insert mode

-- [ [ Execute Terminal ] ]
vim.keymap.set('n', "<leader>mec", "<C-w><C-v><C-w>l:ter<CR><S-i>g++ -g main.cpp && ./a.out<CR><C-\\><C-n><C-w>h") -- Compile and Run C++ Code (Goes back to source code)

-- Use Terminal
vim.keymap.set('n', "<leader>uec", "<C-w>l<S-i>g++ -g main.cpp && ./a.out<CR><C-\\><C-n><C-w>h") -- Compile and Run C++ Code (Goes back to source code)
