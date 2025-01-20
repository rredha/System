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
  ];

  # Enable networking
  networking.hostName = "toptop";
  networking.networkmanager.enable = true;

  # Enable network manager applet
  programs.nm-applet.enable = true;

  nixpkgs = {
    overlays = [
      (final: prev: {
        dwm = prev.dwm.overrideAttrs (old: {
          src = prev.fetchFromGitHub {
            owner = "rredha";
            repo = "dwm";
            rev = "v0.5";
            sha256 = "0l1n5skkwy5ykrm5ndp7gb1vxpyhc87pc7x38dryn26sfr6jr2sv";
          };
       });
     })
    ];

    config = {
      allowUnfree = true;
    };
  };

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "24.05";
}
