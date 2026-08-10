{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    #nix-ld.url = "github:Mic92/nix-ld";
    #inputs.nix-ld.inputs.nixpkgs.follows = "nixpkgs";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";   # same nixpkgs for both
    };
  };
  outputs = { home-manager, nixpkgs, nixpkgs-unstable, ... }:
  let
    mkHome = { system, host }: home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {
        unstable = nixpkgs-unstable.legacyPackages.${system};   # new
      };
      modules = [ ./nix/hosts/${host}.nix ];   # → ./nix/rpi_home.nix
    };
  in {
    homeConfigurations = {
      "rpi"  = mkHome { system = "aarch64-linux";  host = "rpi"; };
      "work" = mkHome { system = "x86_64-linux";   host = "work"; };
      "mac"  = mkHome { system = "aarch64-darwin"; host = "mac"; };
    };
  };
}
