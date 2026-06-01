-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 常用的 LazyVim 快捷键
vim.keymap.set("n", "<leader>ll", ":Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "<leader>ls", ":Lazy sync<cr>", { desc = "Lazy Sync" })
vim.keymap.set("n", "<leader>ld", ":Lazy debug<cr>", { desc = "Lazy Debug" })
