return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local colors = require("dracula").colors()
		local draculatheme = {
			normal = {
				a = { bg = colors.green, fg = colors.menu },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.menu , fg = colors.fg },
			},
			insert = {
				a = { bg = colors.cyan, fg = colors.menu },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.menu , fg = colors.fg },
			},
			visual = {
				a = { bg = colors.pink, fg = colors.menu },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.menu , fg = colors.fg },
			},
			replace = {
				a = { bg = colors.orange, fg = colors.fg },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.menu , fg = colors.fg },
			},
			command = {
				a = { bg = colors.red, fg = colors.fg },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.menu , fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.yellow, fg = colors.fg },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.menu , fg = colors.fg },
			},
		}
		require("lualine").setup({
			options = {
				theme = draculatheme,
                section_separators = {},
                component_separators = {left = "", right = ""},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "'./'..vim.fn.expand('%:h')" },
				lualine_c = {},
				lualine_x = {"diagnostics", "diff", "branch" },
                --lualine_y = { "branch", "diff", "diagnostics", "searchcount" },
                lualine_y = {"searchcount", "location"},
				--lualine_z = { "location"},
				lualine_z = {},
			},
		})
	end,
}
