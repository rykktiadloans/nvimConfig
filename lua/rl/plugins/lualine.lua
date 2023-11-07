return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local colors = require("dracula").colors()
		local draculatheme = {
			normal = {
				a = { bg = colors.green, fg = colors.bg },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.bg , fg = colors.fg },
			},
			insert = {
				a = { bg = colors.cyan, fg = colors.bg },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.bg , fg = colors.fg },
			},
			visual = {
				a = { bg = colors.pink, fg = colors.bg },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.bg , fg = colors.fg },
			},
			replace = {
				a = { bg = colors.orange, fg = colors.fg },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.bg , fg = colors.fg },
			},
			command = {
				a = { bg = colors.red, fg = colors.fg },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.bg , fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.yellow, fg = colors.fg },
				b = { bg = colors.menu, fg = colors.fg },
				c = { bg = colors.bg , fg = colors.fg },
			},
		}
		require("lualine").setup({
			options = {
				theme = draculatheme,
                section_separators = {},
                component_separators = {left = "/", right = "/"},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics", "searchcount" },
				lualine_c = { "vim.api.nvim_buf_get_name(0)" },
				lualine_x = { "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location", "os.date('%H:%M:%S %d %b')" },
			},
		})
	end,
}
