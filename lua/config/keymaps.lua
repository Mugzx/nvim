-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 常用的快捷键
vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "<leader>ls", "<cmd>Lazy sync<cr>", { desc = "Lazy Sync" })
vim.keymap.set("n", "<leader>ld", "<cmd>Lazy debug<cr>", { desc = "Lazy Debug" })

-- Ctrl+J 终端
vim.keymap.set("n", "<C-j>", function()
  Snacks.terminal(nil, { win = { position = "bottom", height = 0.3 } })
end, { desc = "Open Terminal" })
