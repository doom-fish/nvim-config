-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
vim.g.editorconfig = false
opt.autowrite = true -- Enable auto write
opt.autoread = true
opt.autowriteall = true
opt.swapfile = false
opt.relativenumber = true

opt.shm:append("W")

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "rust" },
  callback = function()
    vim.b.autoformat = false
  end,
})
