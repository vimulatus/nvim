return {
  "echasnovski/mini.nvim",
  config = function()
    -- Examples:
    -- va) - Visually select Around Paren
    -- yinq - Yank Inside Next Quote
    -- ci' - Change Inside Quote
    require("mini.ai").setup({ n_lines = 500 })

    -- Add/delete/replace surroundings
    -- saiw) - Surround Add Inner Word Paren
    -- sd' - Surround delete Quotes
    -- sr)' - Surround Replace ) -> '
    require("mini.surround").setup()

    require("mini.pairs").setup()
  end
}
