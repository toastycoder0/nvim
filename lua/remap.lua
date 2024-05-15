vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>gg", "<cmd>:LazyGit<cr>", { desc = "Open lazy git" })

map("n", "<leader>db", "<cmd>:DBUI<cr>", { desc = "Open database client" })

map("n", "<leader>fe", vim.cmd.Ex, { desc = "Open file manager" })
map("n", "<C-S>", "<cmd>:Startify<cr>", { desc = "Open file manager" })

map("n", "<S-n>", "<cmd>tabnew<cr>", { desc = "Open new tab" })
map("n", "<S-Tab>", "<cmd>tabNext<cr>", { desc = "Toggle tabs" })
map("n", "<S-x>", "<cmd>:q<cr>", { desc = "Close tab" })

map("n", "<C-n>", "<cmd>:bp<cr>", { desc = "Move to previous buffer" })
map("n", "<C-b>", "<cmd>:bn<cr>", { desc = "Move to next buffer" })

map("n", "<C-j>", ":m .+1<CR>==", { desc = "Move code line to bottom" })
map("n", "<C-k>", ":m .-2<CR>==", { desc = "Move code line to top" })
map("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move code line to bottom (Visual mode)" })
map("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move code line to top (Visual mode)" })
