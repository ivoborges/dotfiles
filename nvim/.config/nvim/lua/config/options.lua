vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.wrap = true
opt.linebreak = true
opt.breakindent = true
opt.cursorline = true

opt.spell = true
opt.spelllang = { "en_us", "pt", "es" }

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4

opt.termguicolors = true
opt.conceallevel = 0

opt.ignorecase = true -- searches ignore case (Apple, apple, APPLE)
opt.smartcase = true

opt.clipboard = "unnamedplus" -- use operating system's clipboard

opt.undofile = true -- stores undo history on disk, so you can undo changes even after closing and reopening a file.
