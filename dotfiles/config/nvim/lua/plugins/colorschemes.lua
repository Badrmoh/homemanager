vim.pack.add({
  {
    src = "https://github.com/catppuccin/nvim.git",
    name = "catppuccin", -- This allows require("catppuccin")
  },
})

require("catppuccin").setup({
  transparent_background = true,
  -- Optional: Enable transparency for floating windows
  float = {
    transparent = true,
  },
})
