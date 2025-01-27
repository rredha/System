{ pkgs, config, lib, ... }:

{
 imports = [
    ./klipper
    ./moonraker
    #./fluidd
    ./mainsail
 ];

  services.avahi = {
    enable = true;
    publish = {
      enable = true;
      addresses = true;
      workstation = true;
    };
  };

  environment.systemPackages = with pkgs; [
    klipper-firmware
    moonraker
  ];

}
