-- 小而杂的插件汇总
return {
  -- 行内提示优化插件，当聚焦到当前行时显示全部提示，支持换行显示
  -- https://github.com/rachartier/tiny-inline-diagnostic.nvim
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup()
      vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
    end,
  },

  -- WakaTime 插件，可以统计码字时间
  -- https://wakatime.com/neovim
  { "wakatime/vim-wakatime", lazy = false },

  -- 彩虹括号插件，更好的显示嵌套情况
  -- https://github.com/hiphish/rainbow-delimiters.nvim
  {
    "HiPhish/rainbow-delimiters.nvim",
    main = "rainbow-delimiters.setup",
    submodules = false,
    opts = {},
  },
}
