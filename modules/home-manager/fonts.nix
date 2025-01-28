{ inputs, config, pkgs, lib, nixpkgs, ... }:
{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "JetBrainsMono" "ProggyClean"]; })
 ];

}
