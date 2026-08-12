{ pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    eza
    fzf
    jq
    zoxide
    lazydocker
    lazygit
    uv
    fnm
    postgresql_16
    kubectl
  ];
}
