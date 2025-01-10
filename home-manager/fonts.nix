{ inputs, config, pkgs, lib, nixpkgs, ... }:
{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
      nerdfonts.jetbrains-mono
      nerdfonts.fira-code
      nerdfonts.proggy-clean-tt
  ];

}
