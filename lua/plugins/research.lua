return {
	{
		"chomosuke/typst-preview.nvim",
		lazy = false,
		ft = "typst",
		version = "1.*",
		opts = {
			port = 3000,
			open_cmd = "start %s",
			invert_colors = "auto",
		},
	},

	-- add tinymist to lspconfig
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"chomosuke/typst-preview.nvim",
			"Myriad-Dreamin/tinymist",
		},
		opts = {
			servers = {
				tinymist = {
					settings = {
						formatterMode = "typstyle",
						semanticTokens = "enable",
					},
				},
			},
		},
	},
}
