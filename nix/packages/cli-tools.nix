{ pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    eza
    fzf
    jq
    direnv
    zoxide
    lazydocker
    lazygit
    uv
    fnm
    kubectl
  ];
}
