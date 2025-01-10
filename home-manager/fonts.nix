{ inputs, config, pkgs, lib, nixpkgs, ... }:
{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-code
      nerd-fonts.proggy-clean-tt
  ];

}
