{ pkgs, ... }:
let
  fontDir = "${pkgs.nerd-fonts.jetbrains-mono}/share/fonts/truetype/NerdFonts";
in
{
  fonts.fontconfig.enable = true;
  home.packages = [ pkgs.nerd-fonts.jetbrains-mono ];

  # Linux (rpi, work): fontconfig picks up fonts from home.packages automatically.
  # macOS: fontconfig is not used — symlink .ttfs into ~/Library/Fonts instead.
  home.file = pkgs.lib.mkIf pkgs.stdenv.isDarwin (
    builtins.listToAttrs (map (name: {
      name = "Library/Fonts/${name}";
      value.source = "${fontDir}/${name}";
    }) (builtins.attrNames (builtins.readDir fontDir)))
  );
}
