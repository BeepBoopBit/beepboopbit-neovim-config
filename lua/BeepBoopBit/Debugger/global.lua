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
