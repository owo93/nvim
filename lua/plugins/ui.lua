return {
  -- https://github.com/folke/noice.nvim
  {
    "folke/noice.nvim",
    opts = {
      cmdline = { enabled = false },
      messages = { enabled = false },
      popupmenu = { enabled = false },
      views = {
        hover = {
          border = {
            style = "rounded",
          },
        },
      },
    },
  },

  -- https://github.com/akinsho/bufferline.nvim
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- https://github.com/nvim-lualine/lualine.nvim
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "", right = "" }, right_padding = 4 } },
        lualine_b = {},
        lualine_y = { "lsp_status" },
        lualine_z = {
          { "filetype", separator = { left = "", right = "" }, left_padding = 2 },
        },
      },
    },
  },

  -- https://github.com/b0o/incline.nvim
  {
    "b0o/incline.nvim",
    dependencies = { "craftzdog/solarized-osaka.nvim" },
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local colors = require("solarized-osaka.colors").setup()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = colors.magenta500, guifg = colors.base04 },
            InclineNormalNC = { guifg = colors.violet500, guibg = colors.base03 },
          },
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },

  -- https://github.com/nvim-mini/mini.files
  {
    "nvim-mini/mini.files",
    version = "*",
    opts = function(_, opts)
      opts.windows = opts.windows or {}
      opts.windows.preview = true
      opts.windows.width_focus = 48
      opts.windows.width_preview = 100

      opts.options = opts.options or {}
      opts.options.lsp_timeout = 1000
    end,
  },

  -- https://github.com/nvim-neo-tree/neo-tree.nvim
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = function(_, opts)
      opts.sources = { "filesystem", "buffers", "git_status" }
      opts.source_selector = {
        winbar = true,
        content_layout = "center",
      }
      opts.window = {
        position = "right",
      }
    end,
  },
}
