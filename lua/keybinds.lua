local telescope = require('telescope.builtin')

-- [[ Window keybinds ]]

vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tt', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tp', ':tabprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { noremap = true, silent = true })


-- [[ Telescope keybinds ]]

-- Finding stuff
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fc', telescope.commands, { desc = 'Telescope available commands' })
vim.keymap.set('n', '<leader>kms', telescope.keymaps, { desc = 'Telescope show keymaps' })

-- Git
vim.keymap.set('n', '<leader>gst', telescope.git_status, { desc = 'Telescope git status' })


-- [[ Sidebar keybinds ]]
vim.keymap.set('n', '<C-e>e', ':Neotree filesystem reveal left<CR>', { desc = 'Neotree focus', noremap = true, silent = true })
vim.keymap.set('n', '<leader>ee', ':Neotree filesystem reveal left<CR>', { desc = 'Neotree focus', noremap = true, silent = true })
vim.keymap.set('n', '<C-e>c', ':Neotree close<CR>', { desc = 'Neotree close', noremap = true, silent = true })
vim.keymap.set('n', '<leader>ec', ':Neotree close<CR>', { desc = 'Neotree close', noremap = true, silent = true })
