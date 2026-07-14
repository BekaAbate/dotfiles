local map = vim.keymap.set

-- Disable space in normal/visual (it's the leader)
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Clear search highlights
map('n', '<Esc>', ':nohl<CR>', { silent = true })

-- Navigate wrapped lines naturally
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Scroll and center
map('n', '<C-d>', '<C-d>zz', { silent = true })
map('n', '<C-u>', '<C-u>zz', { silent = true })

-- Keep search matches centered
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

-- Toggle line wrap
map('n', '<leader>lw', '<cmd>set wrap!<CR>', { silent = true, desc = 'Toggle line wrap' })

-- Window management
map('n', '<leader>wv', '<C-W>v', { desc = 'Split window vertically' })
map('n', '<leader>wh', '<C-W>s', { desc = 'Split window horizontally' })
map('n', '<leader>we', '<C-W>=', { desc = 'Equalise split windows' })
map('n', '<leader>wx', '<cmd>close<CR>', { desc = 'Close current split' })

-- Move selected lines up/down
map('v', '<A-j>', ':m .+1<CR>==', { silent = true })
map('v', '<A-k>', ':m .-2<CR>==', { silent = true })

-- Keep yank register when pasting over selection
map('v', 'p', '"_dP', { silent = true })

-- Diagnostics
map('n', '<leader>dp', function()
  vim.diagnostic.jump { count = -1, float = true }
end, { desc = 'Previous diagnostic' })

map('n', '<leader>dn', function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = 'Next diagnostic' })

map('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show diagnostic float' })
map('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Diagnostic list' })
map('n', '<leader>dq', vim.cmd.lclose, { desc = 'Close diagnostic list' })

-- Toggle diagnostics
local diagnostics_active = true
map('n', '<leader>dt', function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.diagnostic.show()
  else
    vim.diagnostic.hide()
  end
end, { desc = 'Toggle diagnostics' })

-- Buffer navigation
map('n', '<Tab>', ':bnext<CR>', { silent = true })
map('n', '<S-Tab>', ':bprevious<CR>', { silent = true })
map('n', '<leader>cx', ':Bdelete!<CR>', { silent = true, desc = 'Close buffer' })
map('n', '<leader>b', '<cmd>enew<CR>', { silent = true, desc = 'New buffer' })
--disable <C-Z>
vim.keymap.set('n', '<C-z>', '<Nop>', { noremap = true, desc = 'Disable suspend' })
vim.keymap.set('i', '<C-z>', '<Nop>', { noremap = true })
vim.keymap.set('v', '<C-z>', '<Nop>', { noremap = true })
