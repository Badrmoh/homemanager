{ pkgs, ... }:
{
  imports = [
	  ../packages.nix
	  ../programs/git.nix
    ../programs/nvim.nix
  ];
  home.username = "badrmoh";
  home.homeDirectory = "/Users/badrmoh";
  home.stateVersion = "26.05";
}
