return {
    "m4xshen/autoclose.nvim",
    config = function()
        require("autoclose").setup({
            options = {
                disabled_filetypes = { "text", "markdown", "norg" },
                disable_when_touch = true,
                touch_regex = "[%w(%[{]",
            },
        })
    end
}
