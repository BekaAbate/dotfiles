return {
  'windwp/nvim-ts-autotag',
  opts = {
    -- Defaults
    enable_close = true, -- Auto close tags
    enable_rename = true, -- Auto rename pairs of tags
    enable_close_on_slash = false, -- Auto close on trailing </
  },
  -- Filetype specific configurations
  ft = { 'html', 'jsx', 'tsx', 'javascriptreact', 'typescriptreact', 'php' }, -- optional filetypes
  config = function(_, opts)
    require('nvim-ts-autotag').setup {
      opts = opts,
      -- Override individual filetype configs
      -- per_filetype = {
      --   ['html'] = {
      --     enable_close = false,
      --   },
      -- },
    }
  end,
}
