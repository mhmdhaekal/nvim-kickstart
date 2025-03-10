return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      transparent_background = false,
      integrations = {
        snacks = true,
        mini = true,
        blink_cmp = true,
        neotree = true,
      }
    }
  end,
}
