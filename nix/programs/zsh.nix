{ config, pkgs, ... }:
let
  zshrc = builtins.readFile ../../dotfiles/zsh/zshrc;
  zshenv = builtins.readFile ../../dotfiles/zsh/zshenv;
in
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = zshrc;
    envExtra = zshenv;
  };
}

