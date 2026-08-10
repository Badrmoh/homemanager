{ pkgs, ... }:
{
  home.packages = [ pkgs.oh-my-posh ];
  xdg.configFile."oh-my-posh".source = ../../dotfiles/config/oh-my-posh;
}
