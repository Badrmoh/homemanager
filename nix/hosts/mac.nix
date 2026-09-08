{ pkgs, ... }:
{
  imports = [
	  ../packages/cli-tools.nix
    ../packages/editor.nix
	  ../programs
  ];
  home.packages = with pkgs; [docker docker-credential-helpers opentofu];
  home.username = "badrmoh";
  home.homeDirectory = "/Users/badrmoh";
  home.stateVersion = "26.05";
}
