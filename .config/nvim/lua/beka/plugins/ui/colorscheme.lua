return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    config = function()
      local transparent = true

      local function apply()
        require('rose-pine').setup {
          variant = 'main',
          disable_background = transparent,
          disable_float_background = transparent,
          -- Force completion popup backgrounds to match transparency
          highlight_groups = transparent and {
            BlinkCmpMenu           = { bg = 'none' },
            BlinkCmpMenuBorder     = { bg = 'none' },
            BlinkCmpDoc            = { bg = 'none' },
            BlinkCmpDocBorder      = { bg = 'none' },
            BlinkCmpSignatureHelp  = { bg = 'none' },
            BlinkCmpSignatureHelpBorder = { bg = 'none' },
          } or {},
        }
        vim.cmd 'colorscheme rose-pine'
      end

      apply()

      vim.keymap.set('n', '<leader>tt', function()
        transparent = not transparent
        apply()
        vim.notify('Transparency: ' .. (transparent and 'on' or 'off'))
      end, { desc = 'Toggle transparency' })
    end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = true,
    opts = {
      style = 'night',
      transparent = true,
      styles = { sidebars = 'transparent', floats = 'transparent' },
    },
  },
}
