vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>gi', { noremap = true })
vim.keymap.set('v', '<C-s>', '<Esc>:w<CR>gv', { noremap = true })
