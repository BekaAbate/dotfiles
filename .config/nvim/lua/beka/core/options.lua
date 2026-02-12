local opt = vim.opt
local o = vim.o

-- options fo folding
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

opt.relativenumber = true
opt.number = true

-- tabs and indentaion

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
o.smartindent = true
opt.wrap = false
opt.cursorline = false
o.breakindent = true
o.undofile = true
o.signcolumn = 'yes'
o.showmode = false
--backups
o.backup = false
o.swapfile = false

vim.opt.shortmess:append 'c' -- don't give |ins-completion-menu| messages
--for hyphenated lines as one word
vim.opt.iskeyword:append '-'

--for smooth auto complition
o.completeopt = 'menuone,noselect'
--wrap lines
o.wrap = false
o.linebreak = true

-- --whitespace settings
-- o.list = true
-- opt.listchars = { tab = "", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
o.inccommand = 'nosplit'

-- Decrease update time
o.updatetime = 500

-- Decrease mapped sequence wait time
o.timeoutlen = 500

--no of screen lines to keep
o.scrolloff = 10

-- search settings
opt.ignorecase = true
opt.smartcase = true

--shows confirm dialog
o.confirm = true

-- for colorscheme
opt.termguicolors = true
opt.background = 'dark'

--backspace
opt.backspace = 'indent,eol,start'

--clipboard
vim.schedule(function()
  o.clipboard = 'unnamedplus'
end)

--split window
opt.splitright = true
opt.splitbelow = true
