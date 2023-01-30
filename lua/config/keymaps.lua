local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<c-,>", require("neotest").summary.toggle, { desc = "Open test summary" })
map("n", "<ALT-j>", ":m .+1<cr>==", { desc = "Move down" })
map("v", "<ALT-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("i", "<ALT-j>", "<Esc>:m .+1<cr>==gi", { desc = "Move down" })
