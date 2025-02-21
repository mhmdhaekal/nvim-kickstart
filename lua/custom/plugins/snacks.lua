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
  },
  keys = {
    {
      '<leader>z',
      function()
        Snacks.zen()
      end,
      desc = 'Toggle Zen Mode',
    },
    {
      '<leader>lg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
    {
      '<c-/>',
      function()
        Snacks.terminal()
      end,
      desc = 'Toggle Terminal',
    },
    { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },

  },
}
