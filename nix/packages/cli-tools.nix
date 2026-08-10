{ pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    #bun
    volta
    eza
    fzf
    direnv
    zoxide
    lazydocker
    lazygit
    kubectl
  ];
}
