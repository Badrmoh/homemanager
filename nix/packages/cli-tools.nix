{ pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    #bun
    eza
    fzf
    direnv
    zoxide
    lazydocker
    lazygit
    kubectl
  ];
}
