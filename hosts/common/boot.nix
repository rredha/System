{
  pkgs,
  config,
  lib,
  ...
}:
{
  # use the systemd-boot efi boot loader.
  boot.loader.systemd-boot.enable = true;
  # I Dont know why this option doesnt work anymore ?
  #boot.loader.efi.canTouchEfiVariables = true;
}
