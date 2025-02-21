return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',

    -- use a release tag to download pre-built binaries
    version = '*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'super-tab' },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
      },

      completion = {
        menu = {
          auto_show = true,

          draw = {
            columns = {
              { "label",     "label_description", gap = 1 },
              { "kind_icon", "kind" }
            },
          }
        },
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
      },

      signature = {
        enabled = true,
      },


      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
    opts_extend = { "sources.default" }
  }
}
