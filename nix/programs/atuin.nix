{ ... }:
{
  programs.atuin.enable = true;
  xdg.configFile."atuin".source = ../../dotfiles/config/atuin;
}

