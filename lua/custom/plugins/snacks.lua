return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    animate = { enable = true },
    bigfile = { enabled = true },
    dashboard = { enabled = true, example = 'doom' },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = false },
    quickfile = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    lazygit = { enabled = false },
    terminal = {enabled = false}
  },
  keys = {
    {
      '<leader>z',
      function()
        Snacks.zen()
      end,
      desc = 'Toggle Zen Mode',
    },
    { "<leader>bd", function() Snacks.bufdelete() end,     desc = "Delete Buffer" },
    { "<leader>ba", function() Snacks.bufdelete.all() end, desc = "Delete Buffer" },

  },
}
