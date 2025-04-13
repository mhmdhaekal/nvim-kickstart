return {
  {
    "nvim-lua/plenary.nvim"
  },
  {
    "nvchad/ui",
    config = function()
      require "nvchad"
      local tbf = require("nvchad.tabufline")
      vim.keymap.set('n', '<tab>', tbf.next, { desc = '[T]ab [N]ext' })
      vim.keymap.set('n', '<s-tab>', tbf.prev, { desc = '[T]ab [P]revious' })

      vim.keymap.set({ "n", "t" }, "<A-i>", function()
        require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
      end)
    end
  },
  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },
  {
    "nvchad/volt"
  }
}
