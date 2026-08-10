{ ... }:
{
  imports = [
	  ../packages/build-essentials.nix
	  ../packages/cli-tools.nix
    ../packages/editor.nix
    ../programs
  ];
  home.username = "badr";
  home.homeDirectory = "/home/badr";
  home.stateVersion = "26.05";
}
