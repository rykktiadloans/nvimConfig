return {
	'Mofiqul/dracula.nvim',
	priority = 200,
	config = function()
		transparent_bg = true
		vim.cmd("colorscheme dracula")
		vim.api.nvim_set_hl(0, "Normal", {bg = "none" })

		vim.api.nvim_set_hl(0, "SignColumn", {bg = "none" })


	end
}
