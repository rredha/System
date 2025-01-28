{ inputs, config, pkgs, lib, nixpkgs, ... }:
{
  home.packages = with pkgs; [
    freecad
  ];
}
