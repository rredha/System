{ inputs, config, pkgs, lib, nixpkgs, ... }:
{
  fonts.fontconfig.enable = true;

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "JetbrainsMono" "ProggyClean"]; })
 ];

}
