return {
    "windwp/nvim-ts-autotag",
    config = function()
        require 'nvim-treesitter.configs'.setup {
            autotag = {
                enable = true,
            },
            opts = {
                enable_close_on_slash = true
            }
        }
    end
}
