return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = {
        enabled = true,
        preset = {
          header = [[
<-. (`-')_      (`-')  _     <-. (`-')
  \( OO) )    *(OO ) (*)       \(OO )_
,--./ ,--/,--.(_/,-.\ ,-(`-'),--./  ,-.)
|   \ |  |\   \ / (_/ | ( OO)|   `.'   |
|  . '|  |)\   /   /  |  |  )|  |'.'|  |
|  |\    |_ \     /_)(|  |_/ |  |   |  |
|  | \   |\-'\   /    |  |'->|  |   |  |
`--'  `--'    `-'     `--'   `--'   `--'
        ]],
        },
        sections = {
          { section = "header" },
          { section = "keys", padding = 2 },
          {
            icon = " ",
            desc = "Browse Repo",
            padding = 1,
            key = "b",
            action = function()
              Snacks.gitbrowse()
            end,
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
      git = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      zen = { enabled = true },
    },
  },
}
