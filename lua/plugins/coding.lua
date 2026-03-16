return {
	-- https://github.com/zbirenbaum/copilot.lua
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		build = ":Copilot auth",
		opts = function(_, opts)
			opts.suggestion = {
				enabled = false,
				auto_trigger = false,
				debounce = 75,
			}
			opts.panel = {
				enabled = false,
			}
			opts.filetypes = {
				markdown = true,
				help = true,
				["."] = false,
			}
		end,
	},
}
