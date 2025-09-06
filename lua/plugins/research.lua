return {
	{
		"chomosuke/typst-preview.nvim",
		lazy = false,
		version = "1.*",
		opts = {},
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
						exportPdf = "onType",
						outputPath = "$dir/target/$name",
					},
				},
			},
		},
	},
}
