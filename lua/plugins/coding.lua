return {

  -- https://github.com/echasnovski/mini.bracketed
  {
    "echasnovski/mini.bracketed",
    event = "BufReadPost",
    config = function()
      local bracketed = require("mini.bracketed")
      bracketed.setup({
        file = { suffix = "" },
        window = { suffix = "" },
        quickfix = { suffix = "" },
        yank = { suffix = "" },
        treesitter = { suffix = "n" },
      })
    end,
  },

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

  -- https://github.com/larvag/vimtex
  {
    "lervag/vimtex",
    lazy = false,
  },
}
