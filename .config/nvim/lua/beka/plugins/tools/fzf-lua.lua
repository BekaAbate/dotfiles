return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local fzf = require 'fzf-lua'

    fzf.setup {
      -- Default options matching a clean, minimal UI
      winopts = {
        height = 0.85,
        width = 0.80,
        row = 0.35,
        col = 0.50,
        preview = {
          layout = 'horizontal',
          horizontal = 'right:50%',
        },
      },
      keymap = {
        builtin = {
          ['<C-d>'] = 'preview-page-down',
          ['<C-u>'] = 'preview-page-up',
        },
      },
      actions = {
        files = {
          -- Inherit all other file defaults, but change 'default' action
          [1] = true,
          ['default'] = require('fzf-lua.actions').file_edit,
        },
      },
      files = {
        -- Include hidden files (like .env) and ignored files (from .gitignore) by default.
        -- We explicitly exclude .git and node_modules so that the search remains extremely fast.
        fd_opts = "--color=never --type f --type l --hidden --follow --no-ignore --exclude .git --exclude node_modules --exclude dist",
        rg_opts = "--color=never --files --hidden --follow --no-ignore -g '!.git' -g '!node_modules' -g '!dist'",
      },
    }

    local map = vim.keymap.set
    map('n', '<leader>ff', fzf.files, { desc = 'Find files' })
    map('n', '<leader>fs', fzf.live_grep, { desc = 'Live grep' })
    map('n', '<leader>fw', fzf.grep_cword, { desc = 'Grep current word' })
    map('n', '<leader>fb', fzf.buffers, { desc = 'Find buffers' })
    map('n', '<leader>fh', fzf.help_tags, { desc = 'Find help' })
    map('n', '<leader>fd', fzf.diagnostics_workspace, { desc = 'Find diagnostics' })
    map('n', '<leader>fr', fzf.resume, { desc = 'Resume last search' })
    map('n', '<leader>?', fzf.oldfiles, { desc = 'Recent files' })
    map('n', '<leader>sm', fzf.marks, { desc = 'Search marks' })
    map('n', '<leader>gf', fzf.git_files, { desc = 'Git files' })
    map('n', '<leader>gc', fzf.git_commits, { desc = 'Git commits' })
    map('n', '<leader>gb', fzf.git_branches, { desc = 'Git branches' })
    map('n', '<leader>gs', fzf.git_status, { desc = 'Git status' })
    map('n', '<leader><leader>', fzf.buffers, { desc = 'Find buffers' })
    map('n', '<leader>/', fzf.grep_curbuf, { desc = 'Fuzzy find in current buffer' })
    map('n', '<leader>s/', fzf.lines, { desc = 'Search lines in all open buffers' })
  end,
}
