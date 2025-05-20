return {
	{ import = "lazyvim.plugins.extras.lang.json" },
	{ import = "lazyvim.plugins.extras.lang.toml" },
	{ import = "lazyvim.plugins.extras.lang.markdown" },
	{ import = "lazyvim.plugins.extras.lang.python" },
	{ import = "lazyvim.plugins.extras.lang.tex" },
	{ import = "lazyvim.plugins.extras.lang.rust" },
	{ import = "lazyvim.plugins.extras.lang.typescript" },

	-- https://github.com/mason-org/mason.nvim
	{
		"mason-org/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"stylua",
				"luacheck",
				"shellcheck",
				"typescript-language-server",
				"css-lsp",
				"rust-analyzer",
				"pyright",
				"ruff",
				"clangd",
			})
		end,
	},

	-- https://github.com/neovim/nvim-lspconfig
	-- {
	-- 	"neovim/nvim-lspconfig",
	-- 	---@class PluginLspOpts
	-- 	opts = {
	-- 		---@type lspconfig.options
	-- 		servers = {
	-- 			rust_analyzer = {},
	-- 		},
	-- 	},
	-- },
}
