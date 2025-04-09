return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup()
    local api = require "nvim-tree.api"
    vim.keymap.set("n", "<leader>e", api.tree.focus, { desc = "focus nvim tree" })
    vim.keymap.set("n", "<leader>1", api.tree.toggle, { desc = "toggle nvim tree" })
  end
}
