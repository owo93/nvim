return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = {
        enabled = true,
        formats = {
          key = function(item)
            return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
          end,
        },
        sections = {
          { section = "keys", padding = 2 },
          {
            title = "Projects",
            section = "projects",
            indent = 2,
            limit = 8,
            padding = 1,
          },
          {
            title = "Recents",
            section = "recent_files",
            indent = 2,
            limit = 8,
            padding = 1,
          },
          { section = "startup" },
        },
      },
      bigfile = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },
}
