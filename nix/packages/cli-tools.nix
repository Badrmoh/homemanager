{ pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    #bun
    volta
    nodejs_22
    eza
    fzf
    direnv
    zoxide
    lazydocker
    lazygit
    kubectl
  ];
}
