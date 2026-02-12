return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local transparent = true -- default state

      -- Function to toggle transparency
      local function toggle_transparency()
        transparent = not transparent

        require('tokyonight').setup {
          style = 'night',
          transparent = transparent,
          styles = {
            sidebars = transparent and 'transparent' or 'dark',
            floats = transparent and 'transparent' or 'dark',
          },
        }

        -- Reload the colorscheme to apply changes
        vim.cmd 'colorscheme tokyonight'

        -- Print current state
        if transparent then
          print 'Transparency: Enabled'
        else
          print 'Transparency: Disabled'
        end
      end

      -- Set keymap to toggle transparency (e.g., <leader>tt)
      vim.keymap.set('n', '<leader>tt', toggle_transparency, { desc = 'Toggle transparency' })

      -- Initial setup
      require('tokyonight').setup {
        style = 'night',
        transparent = transparent,
        styles = {
          sidebars = transparent and 'transparent' or 'dark',
          floats = transparent and 'transparent' or 'dark',
        },
        -- on_highlights = function(hl, _)
        --   hl.Comment = {
        --     italic = true,
        --     bg = 'NONE',
        --     fg = '#d2691e',
        --   }
        -- end,
      }
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        variant = 'main', -- 'main', 'moon', or 'dawn'
        disable_background = true, -- transparency
        disable_float_background = true,
      }
      vim.cmd 'colorscheme rose-pine'
    end,
  },
}
