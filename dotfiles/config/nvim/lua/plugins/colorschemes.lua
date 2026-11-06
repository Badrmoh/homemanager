vim.pack.add({
  {
    src = "https://github.com/catppuccin/nvim.git",
    name = "catppuccin", -- This allows require("catppuccin")
  },
  {
    src = "github.com/folke/tokyonight.nvim.git",
    name = "tokyonight", -- This allows require("tokyonight")
  }

})

require("catppuccin").setup({
  transparent_background = true,
  -- Optional: Enable transparency for floating windows
  float = {
    transparent = true,
  },
})

require("tokyonight").setup({
  transparent_background = true,
  -- Optional: Enable transparency for floating windows
  float = {
    transparent = true,
  },
})
