require("rl.remap")
require("rl.lazy")

vim.opt.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.linebreak = true

vim.opt.swapfile = false
vim.opt.backup = false
--vim.opt.undodir = "C:\\Users\\User\\AppData\\Local\\nvim-data\\undo"
vim.opt.undofile = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.showtabline = 2

vim.wo.relativenumber = true

vim.opt.updatetime = 50

vim.api.nvim_create_autocmd("FileType", {
    pattern = {"norg", "lisp"},
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.shiftwidth = 2
    end
})

vim.g.maplocalleader = ','
