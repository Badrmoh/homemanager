{ ... }:
{
  programs.neovim.enable = true;
  xdg.configFile."nvim".source = ../../dotfiles/config/nvim;
}
