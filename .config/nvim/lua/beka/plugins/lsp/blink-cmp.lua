return {
  'saghen/blink.cmp',
  version = '*', -- use latest stable release
  dependencies = { 'rafamadriz/friendly-snippets' },
  opts = {
    keymap = {
      preset = 'default',
      -- Custom overrides to match your old nvim-cmp muscle memory
      ['<C-j>'] = { 'select_next', 'fallback' },
      ['<C-k>'] = { 'select_prev', 'fallback' },
      ['<C-c>'] = { 'cancel', 'fallback' },
      ['<CR>'] = { 'accept', 'fallback' },
    },
    appearance = {
      nerd_font_variant = 'mono',
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    completion = {
      menu = {
        border = 'rounded',
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
        window = {
          border = 'rounded',
        },
      },
      accept = {
        auto_brackets = { enabled = true }, -- replaces nvim-autopairs
      },
    },
    signature = {
      enabled = true, -- inline signature help
      window = {
        border = 'rounded',
      },
    },
  },
  opts_extend = { 'sources.default' },
}
