vim.o.termguicolors = true

vim.pack.add({
	{
		src = "https://github.com/catppuccin/nvim.git",
		name = "catppuccin",
	},
})

require("catppuccin").setup({
	transparent_background = true,
	float = {
		transparent = true,
	},
	flavour = "mocha",
})

vim.cmd.colorscheme("catppuccin-nvim")
