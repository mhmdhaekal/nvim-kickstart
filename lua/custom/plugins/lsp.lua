return {
    'neovim/nvim-lspconfig',
    dependencies = {
        { 'williamboman/mason.nvim', config = true },
        'saghen/blink.cmp',
    },
    config = function()
        require('mason').setup()

        local mason_registry = require 'mason-registry'
        local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path() ..
            '/node_modules/@vue/language-server'

        local servers = {
            gopls = {},
            rust_analyzer = {},
            ts_ls = {
                init_options = {
                    preferences = {
                        disableSuggestions = true,
                    },
                    plugins = {
                        {
                            name = '@vue/typescript-plugin',
                            location = vue_language_server_path,
                            languages = { 'vue' },
                        },
                    },
                },
                filetypes = {
                    'typescript',
                    'javascript',
                    'javascriptreact',
                    'typescriptreact',
                    'vue',
                },
            },
            lua_ls = {
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = 'Replace',
                        },
                    },
                },
            },
            eslint = {},
            tailwindcss = {},
            astro = {},
            templ = {},
            zls = {},
            sqls = {},
            clangd = {},
            ruff = {},
            basedpyright = {
                settings = {
                    basedpyright = {
                        analysis = {
                            typeCheckingMode = 'off'
                        }
                    }
                }
            }
        }

        for server, config in pairs(servers) do
            vim.lsp.enable(server)
            vim.lsp.config(server, config)
        end
    end,
}
