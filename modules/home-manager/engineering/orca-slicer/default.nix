{ inputs, config, pkgs, lib, nixpkgs, ... }:
{
  home.packages = with pkgs; [
    orca-slicer
    #webkitgtk
  ];
}
