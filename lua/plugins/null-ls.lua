return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.biome,
        null_ls.builtins.formatting.yamlfmt,
        null_ls.builtins.formatting.rustywind,
      },
    })

    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {desc = "[F]ormat Buffer"})
  end,
}
