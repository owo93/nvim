return {
  -- https://github.com/stevearc/overseer.nvim
  {
    "stevearc/overseer.nvim",
    cmd = {
      "OverseerOpen",
      "OverseerClose",
      "OverseerToggle",
      "OverseerSaveBundle",
      "OverseerLoadBundle",
      "OverseerDeleteBundle",
      "OverseerRunCmd",
      "OverseerRun",
      "OverseerInfo",
      "OverseerBuild",
      "OverseerQuickAction",
      "OverseerTaskAction",
      "OverseerClearCache",
    },
    opts = {
      dap = false,
      task_list = {
        bindings = {
          ["<C-h>"] = false,
          ["<C-j>"] = false,
          ["<C-k>"] = false,
          ["<C-l>"] = false,
        },
      },
      form = {
        win_opts = {
          winblend = 0,
        },
      },
      confirm = {
        win_opts = {
          winblend = 0,
        },
      },
      task_win = {
        win_opts = {
          winblend = 0,
        },
      },
    },
  -- stylua: ignore
  keys = {
    { "<leader>ow", "<cmd>OverseerToggle<cr>",      desc = "Task list" },
    { "<leader>oo", "<cmd>OverseerRun<cr>",         desc = "Run task" },
    { "<leader>oq", "<cmd>OverseerQuickAction<cr>", desc = "Action recent task" },
    { "<leader>oi", "<cmd>OverseerInfo<cr>",        desc = "Overseer Info" },
    { "<leader>ob", "<cmd>OverseerBuild<cr>",       desc = "Task builder" },
    { "<leader>ot", "<cmd>OverseerTaskAction<cr>",  desc = "Task action" },
    { "<leader>oc", "<cmd>OverseerClearCache<cr>",  desc = "Clear cache" },
  },
  },

  --  https://github.com/saghen/blink.cmp
  {
    "saghen/blink.cmp",
    dependencies = {
      { "rafamadriz/friendly-snippets" },
      { "giuxtaposition/blink-cmp-copilot" },
    },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = "enter" },
      completion = {
        menu = { border = "rounded" },
        documentation = { window = { border = "rounded" } },
      },
      signature = {
        enabled = true,
        window = { border = "rounded" },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "copilot" },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-cmp-copilot",
            score_offset = 100,
            async = true,
          },
        },
      },
    },
    lazy = true,
  },
}
