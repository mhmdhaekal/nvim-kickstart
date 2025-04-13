return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = true },
    bigfile = { enabled = true },
    quickfile = { enabled = true },
    dashboard = { example = "doom" }
  },
  keys = {
    {
      '<leader>z',
      function()
        Snacks.zen()
      end,
      desc = 'Toggle Zen Mode',
    },
  },
}
