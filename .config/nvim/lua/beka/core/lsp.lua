-- LSP keymaps on attach
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('beka-lsp-attach', { clear = true }),
  callback = function(event)
    local map = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    map('gd', require('fzf-lua').lsp_definitions, 'Go to definition')
    map('gr', require('fzf-lua').lsp_references, 'Go to references')
    map('gI', require('fzf-lua').lsp_implementations, 'Go to implementation')
    map('<leader>D', require('fzf-lua').lsp_typedefs, 'Type definition')
    map('<leader>ds', require('fzf-lua').lsp_document_symbols, 'Document symbols')
    map('<leader>ws', require('fzf-lua').lsp_live_workspace_symbols, 'Workspace symbols')
    map('<leader>rn', vim.lsp.buf.rename, 'Rename')
    map('<leader>ca', vim.lsp.buf.code_action, 'Code action')
    map('K', vim.lsp.buf.hover, 'Hover documentation')
    map('gD', vim.lsp.buf.declaration, 'Go to declaration')

    -- Document highlights on cursor hold (only if server supports it)
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
      local hi_group = vim.api.nvim_create_augroup('beka-lsp-highlight', { clear = false })

      vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
        buffer = event.buf,
        group = hi_group,
        callback = vim.lsp.buf.document_highlight,
      })

      vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
        buffer = event.buf,
        group = hi_group,
        callback = vim.lsp.buf.clear_references,
      })

      vim.api.nvim_create_autocmd('LspDetach', {
        group = vim.api.nvim_create_augroup('beka-lsp-detach', { clear = true }),
        callback = function(event2)
          vim.lsp.buf.clear_references()
          vim.api.nvim_clear_autocmds { group = 'beka-lsp-highlight', buffer = event2.buf }
        end,
      })
    end
  end,
})

-- Enable servers (configs live in /lsp/*.lua)
vim.lsp.enable { 'luals', 'html', 'cssls', 'emmetls', 'tsls', 'twls', 'intelephense', 'gopls', 'prismals' }
