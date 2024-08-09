local opts = { noremap = true, silent = true }

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Disable continuations
vim.keymap.set('n', '<Leader>o', 'o<Esc>^Da', opts)
vim.keymap.set('n', '<Leader>O', 'O<Esc>^Da', opts)

-- Save file
vim.keymap.set('n', '<C-s>', ':w<CR>', opts)
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', opts)

-- TODO: move to IncRename plugin file
-- IncRename
vim.keymap.set('n', '<leader>rn', ':IncRename ')
