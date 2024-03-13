return{
    "Febri-i/snake.nvim",
    dependencies = {
        "Febri-i/fscreen.nvim"
    },
    config = function()
		local colors = require("dracula").colors()
        require("snake").setup({
            custom_higlitght = {
                        text = "guibg=" .. colors.fg .. " guifg=" .. colors.bg,
                        background = colors.bg,
                        food1 = "guibg="..colors.pink,
                        food2 = "guibg="..colors.cyan,
                        food3 = "guibg="..colors.yellow,
                        body = "guibg="..colors.green,
                        head = "guibg="..colors.green
                    }

        })
    end
}
