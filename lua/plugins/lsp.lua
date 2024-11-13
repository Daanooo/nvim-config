return {
    -- lspconfig core
    {
        'neovim/nvim-lspconfig',

        config = function ()
            local lspconfig = require('lspconfig')

            lspconfig.lua_ls.setup{}
        end,
    },

    -- autocomplete
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
}
