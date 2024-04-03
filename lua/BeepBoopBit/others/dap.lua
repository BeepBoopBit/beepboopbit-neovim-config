-- Setup for the debugger
require("dapui").setup()
require("dap-python").setup("~/.virtualenvs/default/bin/python")
require("nvim-dap-virtual-text").setup()

-- Setting up adapters
local dap = require("dap")

dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = { "-i", "dap" }
}

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "gdb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = "${workspaceFolder}",
  },
}
