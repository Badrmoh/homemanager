return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- load before other plugins
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        flavour = "mocha",
        float = {
          transparent = true,
        },
      })
      vim.cmd.colorscheme("catppuccin-nvim")
    end,
  },
}
