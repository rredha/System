{
  pkgs,
  config,
  lib,
  ...
}:

{
  users.users = {
    redha = {
      description = "Ahmed Redha Mobarek";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
        # TODO: Add your SSH public key(s) here, if you plan on using SSH to connect
      ];
      extraGroups = [ "networkmanager" "wheel" "audio" ];
    };
  };

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
  };

  # enable dwm
  services.xserver.windowManager.dwm.enable = true;
}
