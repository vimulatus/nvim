vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Sync clipboard between OS and neovim
vim.opt.clipboard = "unnamedplus"

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.expandtab = true

-- Set indent width
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Enable Signcolumn
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how neovim displays certain whitespace characters
-- vim.opt.list = true
-- vim.opt.listchars = { tab = "> ", trail ="-", nbsp = "_" }
--
-- Preview substitutions live, as you type
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

vim.opt.scrolloff = 18


