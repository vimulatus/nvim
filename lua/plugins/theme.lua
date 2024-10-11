-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   name = "tokyonight",
--   priority = 1000,
--   init = function()
--     vim.cmd.colorscheme "tokyonight-night"
--   end
-- }

return {
  "Mofiqul/dracula.nvim",
  lazy = false,
  name = "dracula",
  priority = 1000,
  init = function()
    vim.cmd[[colorscheme dracula]]
  end,
  config = function()
    local dracula = require("dracula")
    dracula.setup({
      transparent_bg = true,
      lualine_bg_color = "#44475a",
      italic_comment = true
    })
  end
}
