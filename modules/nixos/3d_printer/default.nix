{ pkgs, config, lib, ... }:

{
 imports = [
    ./klipper
    ./fluidd
    ./moonraker
 ];




  # environment.systemPackages = with pkgs; [
  #  klipper
  #  klipper-flash
  #  klipper-firmware
  #  klipper-genconf
  #];

}
