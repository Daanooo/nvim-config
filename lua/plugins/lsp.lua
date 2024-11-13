local function configure_lsps(lspconfig)
    lspconfig.lua_ls.setup{}
end

return {
    -- lspconfig core
    {
        'neovim/nvim-lspconfig',

        config = function ()
            local lspconfig = require('lspconfig')
            local lspconfig_defaults = require('lspconfig').util.default_config

            vim.opt.signcolumn = 'yes'

            lspconfig_defaults.capabilities = vim.tbl_deep_extend('force', lspconfig_defaults.capabilities, require('cmp_nvim_lsp').default_capabilities())

            vim.api.nvim_create_autocmd('LspAttach', {
              desc = 'LSP actions',
              callback = function(event)
                local opts = {buffer = event.buf}

                set_cmp_keybinds(opts)
              end,
            })

            configure_lsps(lspconfig)
        end,
    },

    -- autocomplete
    {
        'hrsh7th/cmp-nvim-lsp'
    },
    {
        'hrsh7th/nvim-cmp',

        config = function()
            local cmp = require('cmp')

            cmp.setup({
              sources = {
                {name = 'nvim_lsp'},
              },
              snippet = {
                expand = function(args)
                  -- You need Neovim v0.10 to use vim.snippet
                  vim.snippet.expand(args.body)
                end,
              },
              mapping = cmp.mapping.preset.insert({}),
            })
        end
    }
}
