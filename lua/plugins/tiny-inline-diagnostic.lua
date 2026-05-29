-- 行内提示优化插件，只有当聚焦到当前行才会显示全部提示且支持换行显示
-- https://github.com/rachartier/tiny-inline-diagnostic.nvim
return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup()
      vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
    end,
  }
}
