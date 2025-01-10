{ inputs, config, pkgs, lib, nixpkgs, ... }:
{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
      nerdfonts.JetbrainsMono
    #nerdfonts.fira-code
    #  nerdfonts.proggy-clean-tt
  ];

}
