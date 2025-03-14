vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal right toggle<CR>', { desc = 'Neotree' })
vim.keymap.set('n', '<leader>b', ':Neotree buffers<CR>', { desc = 'Neotree buffer' })

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  opts = {
    filesystem = {
      window = {},
    },
  },
}
