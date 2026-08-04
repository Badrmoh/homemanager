{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gcc
    btop
    tree-sitter
  ];
}
