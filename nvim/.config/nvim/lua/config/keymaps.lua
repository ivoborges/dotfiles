-- keymaps - keyboard shortcuts, personal interaction with neovim

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })

vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Zen Mode" })

vim.keymap.set("n", "<leader>ww", "<cmd>VimwikiIndex<CR>", { desc = "Open Wiki" })

vim.keymap.set("i", "jk", "<Esc>")

-- spell check

-- Next spelling error
vim.keymap.set("n", "]s", "]s", { desc = "Next spell error" })

-- Previous spelling error
vim.keymap.set("n", "[s", "[s", { desc = "Prev spell error" })


