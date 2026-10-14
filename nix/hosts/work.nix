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
    #defaultCacheTtl = 2592000; 
    #maxCacheTtl = 2592000;
  };

  # programs.ssh = {
  #   enable = true;
  #   enableDefaultConfig = false;
  #   settings."*" = {
  #     AddKeysToAgent = "yes";
  #   };
  # };
  home.packages = with pkgs; [openbao consul-template glab k9s kubernetes-helm rclone awscli kcl at pass dig sentry-cli openssl mc];
  home.username = "badr";
  home.homeDirectory = "/home/badr";
  home.stateVersion = "26.05";
}
