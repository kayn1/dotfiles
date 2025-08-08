-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set("n", "<leader>mm", ":vsp<bar>term<cr>", { desc = "Open Terminal" })
vim.keymap.set("n", "<leader>mc", "<cmd>close<cr>", { desc = "Close Terminal" })

-- Copy file paths with dedicated prefix
vim.keymap.set("n", "<leader>fC", function()
  local path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy relative path" })

vim.keymap.set("n", "<leader>fA", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy absolute path" })

vim.keymap.set("n", "<leader>fF", function()
  local path = vim.fn.expand("%:t")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy filename" })

-- Spell check keymaps
vim.keymap.set("n", "<leader>ss", function()
  vim.opt.spell = not vim.opt.spell:get()
  vim.notify("Spell: " .. (vim.opt.spell:get() and "ON" or "OFF"))
end, { desc = "Toggle spell check" })
vim.keymap.set("n", "]s", "]s", { desc = "Next misspelling" })
vim.keymap.set("n", "[s", "[s", { desc = "Previous misspelling" })
vim.keymap.set("n", "zg", "zg", { desc = "Add word to dictionary" })
vim.keymap.set("n", "z=", "z=", { desc = "Suggest corrections" })
