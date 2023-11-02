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
                return {
                    Normal = {bg = "none"},
                    NormalFloat = {bg = colors.bg},
                    SignColumn = {bg = "none"},
                    LineNR = {fg = colors.cyan},
                    FloatBorder = {bg = colors.bg, fg = colors.bg},
                    Title = {bg = colors.cyan, fg = colors.bg},
                    TelescopeNormal = {link = "NormalFloat"},
                    TelescopePromptNormal = {bg = colors.selection},
                    TelescopePromptTitle = {link = "Title"},
                    TelescopeResultsBorder = {link = "FloatBorder"},
                    TelescopePromptBorder = {bg = colors.selection, fg = colors.selection},
                    TelescopePreviewBorder = {link = "FloatBorder"},
                    TelescopeMatching = {bg = colors.selection, fg = colors.cyan},
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
