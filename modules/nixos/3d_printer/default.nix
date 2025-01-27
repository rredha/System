{ pkgs, config, lib, ... }:

{
 imports = [
    ./klipper
    ./moonraker
    #./fluidd
    ./mainsail
 ];

  networking = {
    firewall.allowedTCPPorts = [ 80 7125 ];
  };

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
