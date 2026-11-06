return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "day",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(highlights)
        local text = "#1f2335"
        local path = "#3b4261"

        highlights.FzfLuaNormal = { fg = text, bg = "NONE" }
        highlights.FzfLuaFzfNormal = { fg = text }
        highlights.FzfLuaFilePart = { fg = text, bold = true }
        highlights.FzfLuaDirPart = { fg = path, bold = true }
        highlights.FzfLuaPath = { fg = path, bold = true }
      end,
    },
  },
}
