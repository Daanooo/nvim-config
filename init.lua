vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.opt.number = true

vim.opt.undofile = true

-- Case insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.breakindent = true

vim.opt.signcolumn = 'yes' 
-- Timeout stuff
vim.opt.updatetime = 200
vim.opt.timeoutlen = 300

vim.opt.cursorline  = true
vim.opt.scrolloff = 10

vim.opt.syntax = 'on'

vim.opt.tabstop = 4       
vim.opt.shiftwidth = 4   
vim.opt.expandtab = true 

-- Share clipboard between OS and Neovim
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)


-- [[ Autocommands ]]

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})


-- [[ Plugins ]]

-- Install lazy
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")


-- [[ Keymaps ]]

require('keybinds')
