{ pkgs, ... }:
{
  programs.tmux.enable = true;

  home.file = {
    ".tmux.conf".source = ../../dotfiles/tmux/tmux.conf;
    ".tmux.reset.conf".source = ../../dotfiles/tmux/tmux.reset.conf;
  };
}


