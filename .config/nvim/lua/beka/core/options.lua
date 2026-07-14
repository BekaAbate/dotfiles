local opt = vim.opt

-- Global vim vars (leaders must be set before lazy loads plugins)
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

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Line display
opt.wrap = false
opt.breakindent = true
opt.cursorline = false
opt.scrolloff = 10
opt.signcolumn = 'yes'
opt.showmode = false

-- Folding
opt.foldcolumn = '1'
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = 'nosplit'  -- live preview of substitutions

-- Undo / backups
opt.undofile = true
opt.backup = false
opt.swapfile = false

-- Completion
opt.completeopt = 'menuone,noselect'
opt.shortmess:append 'c'

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Misc
opt.timeoutlen = 500
opt.updatetime = 500
opt.confirm = true
opt.backspace = 'indent,eol,start'
opt.iskeyword:append '-'  -- treat hyphenated words as one word
opt.termguicolors = true
opt.background = 'dark'

-- Clipboard (deferred so it doesn't slow startup)
vim.schedule(function()
  opt.clipboard = 'unnamedplus'
end)
