return {
  -- https://github.com/craftzdog/solarized-osaka.nvim
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = false,
      }
    end,
  },

  -- https://github.com/bluz71/vim-nightfly-guicolors
  {
    "bluz71/vim-nightfly-guicolors",
    lazy = true,
    priority = 1000,
    init = function()
      vim.g.nightflyTransparent = true
      vim.g.nightflyNormalFloat = false
      vim.g.nightflyWinSeparator = 2
      vim.g.nightflyItalics = true
      vim.g.nightflyUnderlineMatchParen = true
    end,
  },
}
