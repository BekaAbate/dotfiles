return {
  'folke/trouble.nvim',
  branch = 'main',
  cmd = 'Trouble',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    focus = true, -- Focus the window when opened
  },
  keys = {
    {
      '<leader>xg',
      '<cmd>Trouble diagnostics toggle focus=true<cr>',
      desc = 'Diagnostics (Trouble)',
    },
    {
      '<leader>xb',
      '<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<cr>',
      desc = 'Buffer Diagnostics (Trouble)',
    },
    {
      '<leader>xs',
      '<cmd>Trouble symbols toggle focus=true<cr>',
      desc = 'Symbols (Trouble)',
    },
    {
      '<leader>xl',
      '<cmd>Trouble lsp toggle focus=true win.position=right<cr>',
      desc = 'LSP Definitions / references / ... (Trouble)',
    },
    {
      '<leader>xo',
      '<cmd>Trouble loclist toggle focus=true<cr>',
      desc = 'Location List (Trouble)',
    },
    {
      '<leader>xq',
      '<cmd>Trouble qflist toggle focus=true<cr>',
      desc = 'Quickfix List (Trouble)',
    },
    {
      '<leader>xc',
      '<cmd>Trouble close<cr>',
      desc = 'Close Trouble Menu',
    },
  },
}
