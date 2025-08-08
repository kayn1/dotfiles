-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set("n", "<leader>mm", ":vsp<bar>term<cr>", { desc = "Open Terminal" })
vim.keymap.set("n", "<leader>mc", "<cmd>close<cr>", { desc = "Close Terminal" })
