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
  },

  -- 滚动条插件，显示滚动位置
  -- https://github.com/dstein64/nvim-scrollview
  {
    "dstein64/nvim-scrollview",
    opts = {
      current_only = true,
      base = "buffer",
      signs_on_startup = { "all" },
      diagnostics_severities = { vim.diagnostic.severity.ERROR, vim.diagnostic.severity.WARN },
    },
  },

  -- 缩略图概览插件，显示文件结构和代码块
  -- https://github.com/nvim-mini/mini.map
  {
    "nvim-mini/mini.map",
    version = false,
    config = function()
      require("mini.map").setup()
    end,
  },

  -- lazygit 插件，简单的交互式 Git 界面
  -- https://github.com/kdheepak/lazygit.nvim
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}
