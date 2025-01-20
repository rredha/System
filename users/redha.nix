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
}
