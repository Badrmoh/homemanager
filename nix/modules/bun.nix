# nix/modules/bun.nix
{ pkgs, ... }:
let
  bunVersion = "1.3.14";   # ← the one string you change for any version
  bunUrl = v: plat: "https://github.com/oven-sh/bun/releases/download/bun-v${v}/bun-${plat}.zip";
in
{
  nixpkgs.overlays = [
    (final: prev: {
      bun = prev.bun.overrideAttrs (old: {
        version = bunVersion;
        passthru = old.passthru // {
          sources = old.passthru.sources // {
            aarch64-linux = final.fetchurl {
              url = bunUrl bunVersion "linux-aarch64";
              sha256 = "7Y6gxA3WDbg1vZorhf6jY0YuIw3yCHGUzGXOhmjs=";
            };
            x86_64-linux = final.fetchurl {
              url = bunUrl bunVersion "linux-x64";
              sha256 = "lR7iruhV8IWVruxiJSJqKY0/6oOj3NZGXAnLzN9+hI8=";
            };
            aarch64-darwin = final.fetchurl {
              url = bunUrl bunVersion "darwin-aarch64";
              sha256 = "2LliIYKK1vl6x6wKt+lYcjQa92MAHogD6CZ2UsJlJiA=";
            };
          };
        };
      });
    })
  ];
}
