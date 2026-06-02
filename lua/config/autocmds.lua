-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 'rachartier/tiny-inline-diagnostic.nvim'
-- 确保在 LSP 配置完成之前关闭 virtual_text
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function()
    vim.diagnostic.config({
      virtual_text = false, -- Disable virtual text
    })
  end,
})

-- 'nvim-mini/mini.map'
-- 默认打开缩略图概览，避免每次都要手动打开
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    if vim.bo.buftype == "" then
      require("mini.map").open()
    end
  end,
})

-- 自动切换到当前文件所在目录，方便终端命令的使用
local has_initial_cd = false
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    if has_initial_cd then return end
    if vim.bo.buftype ~= "" then return end
    local file = vim.fn.expand("%:p")
    if file == "" or vim.fn.isdirectory(file) == 1 then return end
    local dir = vim.fn.fnamemodify(file, ":h")
    if dir ~= "" and vim.fn.isdirectory(dir) == 1 then
      vim.cmd("cd " .. dir)
      has_initial_cd = true
    end
  end,
})
