-- 界面相关
return {
  -- Catppuccin 主题插件，可选 mocha, macchiato, frappe, latte
  -- https://github.com/catppuccin/nvim
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
      })
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },

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
    keys = {
      { "<leader>mm", "<cmd>lua MiniMap.toggle()<cr>", desc = "Toggle minimap" },
    },
    config = function()
      require("mini.map").setup()
    end,
  }
}
