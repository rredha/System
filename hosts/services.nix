{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}:

{
  # Enable cups to print documents.
  services.printing.enable = true;
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
    addresses = true;
    workstation = true;
  };

  # enable touchpad support (enabled default in most desktopmanager).
  services.libinput.enable = true;

  # Pipewire
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true; # if not already enabled
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };
}
