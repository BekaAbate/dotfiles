return {
  'stevearc/oil.nvim',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    skip_confirm_for_simple_edits = true,
    keymaps = {
      ['<C-h>'] = false,
      ['<C-l>'] = false,
      ['<leader>ro'] = 'actions.refresh',
    },
  },
  keys = {
    { '<leader>e', '<CMD>Oil<CR>', desc = 'Open file explorer (oil)' },
  },
}
