return {
  'windwp/nvim-ts-autotag',
  ft = { 'html', 'jsx', 'tsx', 'javascriptreact', 'typescriptreact', 'php' },
  config = function()
    require('nvim-ts-autotag').setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false,
      },
    })
  end,
}
