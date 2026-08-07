vim.pack.add({
  "https://github.com/beauwilliams/statusline.lua"
})


require('statusline').setup({
  match_colorscheme = false, -- Enable colorscheme inheritance (Default: false)
  tabline = true, -- Enable the tabline (Default: true)
  lsp_diagnostics = true, -- Enable Native LSP diagnostics (Default: true)
  ale_diagnostics = false, -- Enable ALE diagnostics (Default: false)
})
