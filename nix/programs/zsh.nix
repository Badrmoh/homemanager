{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };
  home.file = {
    ".zshrc".source = ../../dotfiles/zsh/.zshrc;
    ".zshenv".source = ../../dotfiles/zsh/.zshenv;         # if you have one
    ".config/zsh".source = ../../dotfiles/zsh/config;      # custom plugins dir — whole tree, one line
  };
}

