vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>b', vim.cmd.Ex)

vim.keymap.set('n', '``', '<cmd>q!<CR>', { desc = 'Force quit without saving' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

--move line up an down
vim.keymap.set('v', 'j', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'k', ":m '<-2<cr>gv=gv")

vim.keymap.set('i', 'jj', '<esc>')
vim.keymap.set('n', '<cr>', 'i')

--move word backward/forward
vim.keymap.set({ 'n', 'o', 'x', 'v' }, 'w', 'b')
vim.keymap.set({ 'n', 'o', 'x', 'v' }, 'e', 'w')

--commenting
vim.keymap.set('n', '<C-_>', 'gcc', { remap = true })
vim.keymap.set('v', '<C-_>', 'gc', { remap = true })

-- Duplicate line below (like Option+Shift+Down)
vim.keymap.set('n', '<A-S-Down>', 'yyp', { desc = 'Duplicate line down' })
-- Duplicate line above (like Option+Shift+Up)
vim.keymap.set('n', '<A-S-Up>', 'yyP', { desc = 'Duplicate line up' })

-- find and select next word
vim.keymap.set('n', '<A-d>', '<Plug>(VM-Find-Under)', { remap = true })
vim.keymap.set('v', '<A-d>', '<Plug>(VM-Find-Under)', { remap = true })
