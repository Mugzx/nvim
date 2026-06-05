-- 工具相关
return {
  -- 行内提示优化插件，当聚焦到当前行时显示全部提示，支持换行显示
  -- https://github.com/rachartier/tiny-inline-diagnostic.nvim
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup()
    end,
  },

  -- WakaTime 插件，可以统计码字时间
  -- https://github.com/wakatime/vim-wakatime
  { "wakatime/vim-wakatime", lazy = false },

  -- 按键显示插件，在演示时可以显示输入内容
  -- https://github.com/nstefan002/screenkey.nvim
  {
    "NStefan002/screenkey.nvim",
    lazy = false,
    version = "*", -- or branch = "main", to use the latest commit
  },
}
