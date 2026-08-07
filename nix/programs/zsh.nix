{ pkgs, ... }:
{
  # rpi/work: full home-manager zsh (completion, autosuggestion, highlighting)
  programs.zsh = pkgs.lib.mkIf pkgs.stdenv.isLinux {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };

  # mac: system zsh untouched — we only PLACE config files, it reads them
  home.file = {
    ".zshrc".source = ../../dotfiles/zsh/zshrc;
    ".zshenv".source = ../../dotfiles/zsh/zshenv;
  };
}

