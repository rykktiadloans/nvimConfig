vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", ":Oil --float<CR>")
vim.keymap.set("n", "<leader>E", ":Oil<CR>")
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")
vim.keymap.set({"n", "v"}, "<leader>P", "\"+P")
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set({"n", "v"}, "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>nh", vim.cmd.noh)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'Q', "<nop>")

vim.keymap.set('n', '<leader>b', "<nop>")
vim.keymap.set({'n', "v"}, "<leader>w", "<C-w>")
