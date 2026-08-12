{ pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    eza
    fzf
    jq
    nix-direnv
    zoxide
    lazydocker
    lazygit
    uv
    fnm
    postgresql_16
    kubectl
  ];
}
