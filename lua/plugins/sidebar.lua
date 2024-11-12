return {
    {
        'sidebar-nvim/sidebar.nvim',
        
        config = function()
            require('sidebar-nvim').setup({
                open = true,
                sections = { 'buffers', 'files', 'git', },
                section_separator = { '', string.rep('─', vim.o.columns - 10), '', },
                buffers = {
                    icon = '' 
                },
            })
        end
    },
}
