return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = true,
        theme = 'dracula-nvim',
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y={'location'},
        lualine_z={'progress'}
      },
      tabline = {
        lualine_a = {'branch'},
        lualine_b = {'diff'},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {'searchcount'},
        lualine_z = {'filesize'},
      },
      extensions = {
        "neo-tree",
        "mason"
      }
    })
  end
}
