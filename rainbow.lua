return {
    'hiphish/rainbow-delimiters.nvim',
    config = function()
        local ld = require("rainbow-delimiters")
        vim.g.rainbow_delimiters = {
            strategy = {
                [''] = ld.strategy['global'],
                vim = ld.strategy['local'],
            },
            query = {
                [''] = 'rainbow-delimiters',
                --lua = 'rainbow-blocks',
            },
            priority = {
                [''] = 110,
                lua = 210,
            },
            highlight = {
                "Normal",
                "Boolean",
                "String",
                "Repeat",
                "Character",
                "Number",
                "DiagnosticError"
            },
        }
    end
}
