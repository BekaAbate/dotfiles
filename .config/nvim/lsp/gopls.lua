return {
  cmd = { 'gopls' },
  filetypes = { 'go', 'gomod', 'gowork' },
  root_markers = { 'go.mod', '.git' },
  settings = {
    gopls = {
      gofumpt = true,
      codelenses = {
        test = true,
        tidy = true,
      },
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    },
  },
}
