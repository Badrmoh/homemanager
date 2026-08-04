{ pkgs, ... }:
{
  imports = [
	  ../packages.nix
    ../programs
  ];
  home.username = "badr.ibrahim";
  home.homeDirectory = "/home/badr.ibrahim";
  home.stateVersion = "26.05";
}
