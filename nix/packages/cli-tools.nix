{ pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    bun
    eza
    direnv
    zoxide
    lazydocker
    lazygit
  ];
}
