vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true
vim.g.clipboard = {
  name = 'wl-clipboard',
  copy = {
    ['+'] = { 'wl-copy', '--type', 'text/plain' },
    ['*'] = { 'wl-copy', '--primary', '--type', 'text/plain' },
  },
  paste = {
    ['+'] = { 'wl-paste', '--no-newline' },
    ['*'] = { 'wl-paste', '--no-newline' },
  },
  cache_enabled = true,
}
-- --disable default file explorer
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--disable space in some modes
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

--clear search highlights
keymap.set('n', '<Esc>', ':nohl<CR>', opts)

--alows moving through wrapped lines
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Vertical scroll and center
keymap.set('n', '<C-d>', '<C-d>zz', opts)
keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- find and center
keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

-- -- Increment/decrement numbers
-- keymap.set('n', '<leader>+', '<C-a>', opts) -- increment
-- keymap.set('n', '<leader>-', '<C-x>', opts) -- decrement

-- Toggle line wrapping
keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- ---window managment
--
keymap.set('n', '<leader>wv', '<C-W>v', { desc = 'split window vertically' })
keymap.set('n', '<leader>wh', '<C-W>s', { desc = 'split window horizontally' })
keymap.set('n', '<leader>we', '<C-W>=', { desc = 'make split window equal size' })
keymap.set('n', '<leader>wx', '<cmd>close<CR>', { desc = 'close current split window' })

-- Move text up and down
keymap.set('v', '<A-j>', ':m .+1<CR>==', opts)
keymap.set('v', '<A-k>', ':m .-2<CR>==', opts)

-- Keep last yanked when pasting
keymap.set('v', 'p', '"_dP', opts)

-- Toggle diagnostics
local diagnostics_active = true
keymap.set('n', '<leader>dt', function()
  diagnostics_active = not diagnostics_active

  if diagnostics_active then
    vim.diagnostic.show()
  else
    vim.diagnostic.hide()
  end
end)

-- Diagnostic keymaps
keymap.set('n', '<leader>dp', function()
  vim.diagnostic.jump { count = -1, float = true }
end, { desc = 'Go to previous diagnostic message' })

keymap.set('n', '<leader>dn', function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = 'Go to next diagnostic message' })

keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
keymap.set('n', '<leader>dq', vim.cmd.lclose, { desc = 'Close diagnostics list' })

-- Buffers
keymap.set('n', '<Tab>', ':bnext<CR>', opts)
keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
keymap.set('n', '<leader>cx', ':Bdelete!<CR>', opts) -- close buffer
keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- keymap.set('n', '<leader>tf', function()
--   local buf = vim.api.nvim_create_buf(false, true)
--   vim.api.nvim_open_win(buf, true, {
--     relative = 'editor',
--     width = math.floor(vim.o.columns * 0.8),
--     height = math.floor(vim.o.lines * 0.6),
--     col = math.floor(vim.o.columns * 0.1),
--     row = math.floor(vim.o.lines * 0.2),
--     style = 'minimal',
--     border = 'rounded',
--   })
--   vim.cmd 'terminal'
--   vim.cmd 'startinsert'
-- end, { desc = 'Toggle floating terminal' })

-- Exit terminal mode with 'jk' (like escaping insert mode)
-- keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Open/close terminal in a vertical split
-- keymap.set('n', '<leader>tv', ':vnew | terminal<CR>', { desc = 'Open terminal (vertical)' })

-- Open/close terminal in a horizontal split
-- keymap.set('n', '<leader>th', ':new | terminal<CR>', { desc = 'Open terminal (horizontal)' })

-- --tab managment
--
-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" })
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close current tab" })
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" })
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to previous tab" })
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" })
