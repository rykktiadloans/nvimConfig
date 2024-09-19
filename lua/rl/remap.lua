vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set("n", "<leader>e", ":Oil --float<CR>")
vim.keymap.set("n", "<leader>E", ":Oil<CR>")
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")
vim.keymap.set({"n", "v"}, "<leader>P", "\"+P")
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set({"n", "v"}, "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>nh", vim.cmd.noh)
vim.keymap.set({"n", "v"}, "j", "gj")
vim.keymap.set({"n", "v"}, "k", "gk")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'Q', "<nop>")

vim.keymap.set('n', '<leader>b', "<nop>")
vim.keymap.set({'n', "v"}, "<leader>w", "<C-w>")
vim.keymap.set({'n', "v"}, "<C-w>t", vim.cmd.tabnew)
vim.keymap.set({'n', "v"}, "<C-w>n", vim.cmd.tabnext)
vim.keymap.set({'n', "v"}, "<C-w>p", vim.cmd.tabprev)
vim.keymap.set('n', "<leader>cd", vim.diagnostic.open_float)
vim.keymap.set('n', "<leader>ca", vim.lsp.buf.code_action)
