return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
      }
    }
  },
  config = function()
    vim.keymap.set("n", "<leader>n", function()
      require("neo-tree.command").execute({
        toggle = true,
      })
    end, { desc = "Toggle [N]eotree"})
    vim.keymap.set("n", "<Tab>", "<C-w>w", {})
  end
}
