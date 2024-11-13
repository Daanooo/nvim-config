local telescope = require('telescope.builtin')

--[[
Window keybinds

Prefix: t
--]]
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tt', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tp', ':tabprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { noremap = true, silent = true })


--[[
Telescope keybinds

Prefix: f
--]]
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fc', telescope.commands, { desc = 'Telescope available commands' })
vim.keymap.set('n', '<leader>fkb', telescope.keymaps, { desc = 'Telescope show keymaps' })
vim.keymap.set('n', '<leader>gst', telescope.git_status, { desc = 'Telescope git status' })


--[[
Sidebar keybinds

Prefix: e
--]]
vim.keymap.set('n', '<C-e>e', ':Neotree filesystem reveal left<CR>', { desc = 'Neotree focus', noremap = true, silent = true })
vim.keymap.set('n', '<leader>ee', ':Neotree filesystem reveal left<CR>', { desc = 'Neotree focus', noremap = true, silent = true })
vim.keymap.set('n', '<C-e>c', ':Neotree close<CR>', { desc = 'Neotree close', noremap = true, silent = true })
vim.keymap.set('n', '<leader>ec', ':Neotree close<CR>', { desc = 'Neotree close', noremap = true, silent = true })


--[[
Autocomplete keybinds

Prefix: mixed I guess
--]]
-- These are in a function because they should only be set when file has an lsp available
function set_cmp_keybinds(opts)
    vim.keymap.set('n', 'X', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end
