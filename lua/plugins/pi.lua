-- Pi agent 桥接插件
-- https://github.com/carderne/pi-nvim
return {
  "carderne/pi-nvim",
  keys = {
    { "<leader>pi", "<cmd>Pi<cr>", mode = { "n", "x" }, desc = "Pi send prompt" },
    { "<leader>pp", "<cmd>PiSend<cr>", mode = "n", desc = "Pi send prompt" },
    { "<leader>pf", "<cmd>PiSendFile<cr>", mode = "n", desc = "Pi send current file" },
    { "<leader>ps", "<cmd>PiSendSelection<cr>", mode = "x", desc = "Pi send selection" },
    { "<leader>pl", "<cmd>PiSessions<cr>", mode = "n", desc = "Pi list sessions" },
  },
}
