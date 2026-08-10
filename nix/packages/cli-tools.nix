{ pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    eza
    fzf
    direnv
    zoxide
    lazydocker
    lazygit
    uv
    fnm
    kubectl
  ];
}
