return {
  -- https://github.com/craftzdog/solarized-osaka.nvim
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
        sidebars = { "qf", "help" },
        day_brightness = 0.1,
        lualine_bold = true,
      }
    end,
  },

  -- https://github.com/bluz71/vim-nightfly-guicolors
  {
    "bluz71/vim-nightfly-guicolors",
    lazy = true,
    priority = 1000,
    init = function()
      vim.g.nightflyNormalFloat = false
      vim.g.nightflyWinSeparator = 2
      vim.g.nightflyItalics = true
      vim.g.nightflyUnderlineMatchParen = true
    end,
  },
}
