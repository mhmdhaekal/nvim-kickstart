return {
    "zbirenbaum/copilot.lua",
    lazy = true,
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        require("copilot").setup({
            suggestion = {
                enabled = true,
                auto_trigger = false,
                hide_during_completion = true,
                debounce = 75,
                trigger_on_accept = true,
                keymap = {
                    accept = "<A-l>",
                    accept_word = false,
                    accept_line = false,
                    next = "<A-]>",
                    prev = "<A-[>",
                    dismiss = "<A-k>",
                },
            },
        })
    end
}
