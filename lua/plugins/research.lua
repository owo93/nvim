return {
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
            outputPath = "$root/target/$dir/$name",
          },
        },
      },
    },
  },
}
