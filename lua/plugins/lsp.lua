return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { 'j-hui/fidget.nvim', opts = {} },
    },
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({
        capabilties = capabilities
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.biome.setup({
        capabilities = capabilities
      })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities
      })
      lspconfig.docker_compose_language_service.setup({
        capabilities = capabilities,
      })
      lspconfig.dockerls.setup({
        capabilities = capabilities
      })

      vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {desc = "[G]o to [D]efinition"})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {desc = "Show [C]ode [A]ctions"})
      vim.keymap.set('n', "<leader>rt", vim.lsp.buf.rename, { desc = "[R]ename [T]oken"})
      vim.keymap.set('n', "<leader>e", vim.diagnostic.open_float, { desc = "Show Diagnostics in line"})
    end
  }
}
