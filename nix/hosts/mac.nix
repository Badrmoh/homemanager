{ pkgs, ... }:
{
  imports = [
	  ../packages/cli-tools.nix
    ../packages/editor.nix
	  ../programs
  ];
  home.username = "badrmoh";
  home.homeDirectory = "/Users/badrmoh";
  home.stateVersion = "26.05";
}
