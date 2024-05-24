local map = vim.keymap.set

map("n", "<leader>db", "<cmd>:DBUI<cr>", { desc = "Open database client" })
map("n", "<leader>fx", vim.cmd.Ex, { desc = "Open file manager" })

map("n", "<C-j>", ":m .+1<CR>==", { desc = "Move code line to bottom" })
map("n", "<C-k>", ":m .-2<CR>==", { desc = "Move code line to top" })
map("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move code line to bottom (Visual mode)" })
map("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move code line to top (Visual mode)" })
