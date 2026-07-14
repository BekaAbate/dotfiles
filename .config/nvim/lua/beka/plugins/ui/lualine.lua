return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      icons_enabled = true,
      theme = 'rose-pine',
      section_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' },
      disabled_filetypes = { 'alpha', 'neo-tree' },
      always_divide_middle = true,
    },
    sections = {
      lualine_a = {
        { 'mode', fmt = function(str) return ' ' .. str end },
      },
      lualine_b = { 'branch' },
      lualine_c = { { 'filename', file_status = true, path = 0 } },
      lualine_x = {
        { 'diagnostics', sources = { 'nvim_diagnostic' }, sections = { 'error', 'warn' }, colored = false },
        { 'diff', colored = false, symbols = { added = ' ', modified = ' ', removed = ' ' } },
        { 'filetype' },
      },
      lualine_y = { 'location' },
      lualine_z = { 'progress' },
    },
    inactive_sections = {
      lualine_c = { { 'filename', path = 1 } },
      lualine_x = { { 'location', padding = 0 } },
    },
    extensions = { 'fugitive' },
  },
}
