{ nix-ld, ... }:
{
  nix-ld.nixosModules.nix-ld
  programs.nix-ld.dev.enable = true;
}
