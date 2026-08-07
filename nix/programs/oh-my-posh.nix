{ ... }:
{
  programs.oh-my-posh.enable = true;
  xdg.configFile."oh-my-posh".source = ../../dotfiles/config/oh-my-posh;
}
