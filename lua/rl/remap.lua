vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<C-p>", "\"+p")
vim.keymap.set({"n", "v"}, "<C-y>", "\"+y")
vim.keymap.set({"n", "v"}, "<C-Y>", "\"+Y")
vim.keymap.set("n", "<leader>nh", vim.cmd.noh)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'Q', "<nop>")

vim.keymap.set('n', '<leader>b', "``")

