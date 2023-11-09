return {
    "Mofiqul/dracula.nvim",
    priority = 200,
    config = function()
        require("dracula").setup({
            colors = {
                comment = "#ABB2BF"
            },
            italic_comment = true,
            overrides = function(colors)
                local cool = colors.green
                return {
                    Normal = {bg = "none"},
                    NormalFloat = {bg = "none"},
                    SignColumn = {bg = "none"},
                    LineNR = {fg = cool},
                    LineNr = {fg = cool},
                    FloatBorder = {bg = "none", fg = cool},
                    Title = {bg = "none", fg = cool},
                    TelescopeNormal = {link = "NormalFloat"},
                    TelescopePromptNormal = {bg = "none"},
                    TelescopePromptTitle = {link = "Title"},
                    TelescopeResultsBorder = {link = "FloatBorder"},
                    TelescopePromptBorder = {link = "FloatBorder"},
                    TelescopePreviewBorder = {link = "FloatBorder"},
                    TelescopePreviewTitle = {link = "Title"},
                    TelescopeResultsTitle = {link = "Title"},
                    TelescopeBorder = {link = "FloatBorder"},
                }
            end
        })
        local colors = require("dracula").colors()

        vim.cmd("colorscheme dracula")
    end,
}
