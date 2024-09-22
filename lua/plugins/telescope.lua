return {
  {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Telescope git files" })
    vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Telescope live grep" })
  end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown()
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
