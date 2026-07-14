return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>mp',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      end
      return { timeout_ms = 5000, lsp_format = 'fallback' }
    end,
    formatters_by_ft = {
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      javascriptreact = { 'prettier' },
      typescriptreact = { 'prettier' },
      css = { 'prettier' },
      html = { 'prettier' },
      json = { 'prettier' },
      markdown = { 'prettier' },
      lua = { 'stylua' },
      prisma = { 'prisma_format' },
    },
    formatters = {
      prettier = {
        prepend_args = { '--tab-width', '2', '--single-quote', 'true' },
      },
      prisma_format = {
        command = 'npx',
        args = { 'prisma', 'format', '--schema', '$FILENAME' },
        stdin = false,
      },
    },
  },
}
