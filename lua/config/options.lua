-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 选择系统终端
if vim.fn.has("win32") == 1 then
  LazyVim.terminal.setup("pwsh")
elseif vim.fn.has("unix") == 1 then
  local shell = vim.fn.executable("fish") == 1 and "fish" or "bash"
  LazyVim.terminal.setup(shell)
end

-- 关闭不必要的集成，减少启动时间
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- 设置自动换行
vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.list = true
vim.opt.listchars:append({ space = "·" })
vim.opt.showbreak = "↳⋅"
