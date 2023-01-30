-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- -- This file is automatically loaded by plugins.config

local opt = vim.opt

opt.autowrite = true -- Enable auto write
opt.autoread = true
opt.autowriteall = true
opt.swapfile = false
opt.relativenumber = true

opt.shm:append("W")
