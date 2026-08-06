-- lazy.nvim bootstrap + setup (temporary migration from vim.pack)
-- lazy REQUIRES maplocalleader set BEFORE it loads
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "lazy-plugins" }, -- lua/lazy-plugins/*.lua â€” lazy specs
  },
  -- lockfile to a writable location â€” ~/.config is read-only (nix store)
  lockfile = vim.fn.stdpath("state") .. "/lazy-lock.json",
  install = { colorscheme = { "catppuccin" } },
})

require("config")
