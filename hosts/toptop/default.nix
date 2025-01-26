{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ../common
    ../../users/redha.nix
    ../../modules/nixos/3d_printer
  ];

  # Enable networking
  networking.hostName = "toptop";
  networking.networkmanager.enable = true;

  # Enable network manager applet
  programs.nm-applet.enable = true;

  # enable the x11 windowing system.
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.picom.enable = true;

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "24.05";
}
