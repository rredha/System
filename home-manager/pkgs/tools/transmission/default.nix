{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    transmission_4
  ];
}
