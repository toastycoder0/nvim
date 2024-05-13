local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Open fuzy finder to all files" })
vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Open fuzy finder to git files" })
