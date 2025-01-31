return {
    "nvim-neorg/neorg",
    version = "*",
    config = function()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {},
                ["core.concealer"] = {
                    config = {
                        icon_preset = "basic",
                        folds = true,
                        icons = {
                            ordered = {
                                icons = { "1", "A", "a", "⑴", "Ⓐ", "ⓐ" },
                            },
                            --[[
                            list = {
                                icons = {">"}
                            }
                            --]]
                        }
                    },
                },
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "~/notes",
                        },
                        default_workspace = "notes",
                    },
                },
            },
        }

        vim.wo.foldlevel = 99
        vim.wo.conceallevel = 3
    end,
}
