-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
--
vim.filetype.add({
  extension = {
    templ = "templ",
  },
})

-- Ruby specific settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "ruby", "eruby", "rake", "rbxs", "builder", "jbuilder" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.expandtab = true
    vim.opt_local.softtabstop = 2
  end,
})
