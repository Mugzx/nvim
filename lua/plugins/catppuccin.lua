-- Catppuccin 主题插件，可选 mocha, macchiato, frappe, latte
-- https://github.com/catppuccin/nvim
return {
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
}
