{ pkgs, ... }:
{
  imports = [
	  ../packages.nix
    ../programs
  ];
  home.username = "badr";
  home.homeDirectory = "/home/badr";
  home.stateVersion = "26.05";
}
