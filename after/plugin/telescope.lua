local builtin = require("telescope.builtin")
vim.keymap.set('n', "<leader>ff", builtin.find_files, {desc = "[F]ind [F]iles"})
vim.keymap.set('n', "<leader>fg", builtin.live_grep, {desc = "[F]ind via [G]rep"})
vim.keymap.set('n', "<leader>fb", builtin.buffers, {desc = "[F]ind via [B]uffer"})
vim.keymap.set('n', "<leader>gh", builtin.help_tags, {desc = "[G]et [H]elp"})
