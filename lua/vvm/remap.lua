
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

if vim.g.neovide then
  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', ':set paste<CR>"+p:set nopaste<CR>') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', ':set paste<CR>"+p:set nopaste<CR>') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<C-R>+<CR>') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap('n', '<D-v>', ':set paste<CR>"+p:set nopaste<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', ':set paste<CR>"+p:set nopaste<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
