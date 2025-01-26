{ pkgs, config, lib, ... }:

{
 imports = [
    ./klipper
    ./fluidd
    ./moonraker
 ];


   services.avahi = {
    enable = true;
    publish = {
      enable = true;
      addresses = true;
      workstation = true;
    };
  };


  # environment.systemPackages = with pkgs; [
  #  klipper
  #  klipper-flash
  #  klipper-firmware
  #  klipper-genconf
  #];

}
