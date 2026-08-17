{ pkgs, ... }:
{
  imports = [
	  ../packages/build-essentials.nix
	  ../packages/cli-tools.nix
    ../packages/editor.nix
    ../programs
  ];
  services.ssh-agent.enable = true;
  programs.gpg.enable = true;
  services.gpg-agent = {
    enable = true;
    pinentry.package = pkgs.pinentry-curses;
  };

  # programs.ssh = {
  #   enable = true;
  #   enableDefaultConfig = false;
  #   settings."*" = {
  #     AddKeysToAgent = "yes";
  #   };
  # };
  home.packages = with pkgs; [openbao consul-template glab k9s helm rclone awscli kcl at pass];
  home.username = "badr";
  home.homeDirectory = "/home/badr";
  home.stateVersion = "26.05";
}
