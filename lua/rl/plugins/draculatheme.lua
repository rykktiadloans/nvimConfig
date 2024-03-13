return {
    "Mofiqul/dracula.nvim",
    priority = 200,
    config = function()
        require("dracula").setup({
            colors = {
                comment = "#ABB2BF"
            },
            italic_comment = true,
            transparent_bg = true,
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
        if vim.g.neovide then
            vim.o.guifont = "FiraCode Nerd Font Mono:h14"
            vim.g.neovide_scale_factor = 1.0
            vim.opt.linespace = 0
            vim.g.neovide_transparency = 0.65
            vim.g.neovide_theme = "dracula"
            vim.api.nvim_set_hl(0, "Normal", {bg = colors.bg})
            vim.g.neovide_floating_blur_amount_x = 3.0
            vim.g.neovide_floating_blur_amount_y = 3.0
            vim.g.neovide_cursor_animation_length = 0.10
            vim.g.neovide_cursor_vfx_mode = "pixiedust"
            vim.g.neovide_cursor_vfx_opacity = 256.0
            vim.g.neovide_cursor_vfx_particle_lifetime = 2.0
            vim.g.neovide_cursor_vfx_particle_density = 60.0

        end
    end,
}
