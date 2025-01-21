{
  pkgs,
  config,
  lib,
  ...
}:

{
  users.users = {
    mouna = {
      description = "Mouna Habes";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
        # TODO: Add your SSH public key(s) here, if you plan on using SSH to connect
      ];
      extraGroups = [ "networkmanager" "audio" ];
    };
  };

  services.desktopManager.plasma6.enable = true;
}
