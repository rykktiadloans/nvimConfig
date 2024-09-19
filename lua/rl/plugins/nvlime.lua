return {
    "monkoose/nvlime",
    dependencies = {
        "monkoose/parsley"

    },
    config = function()
        vim.g.nvlime_config = {
            leader = "\\",
            implementation = "sbcl",
            cmp = {
                enabled = true
            }
        }
        require("cmp").setup.filetype({"lisp"}, {
            sources = {
                {name = "nvlime"}
            }
        })
    end
}
