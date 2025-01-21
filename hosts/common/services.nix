{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}:

{
  # enable cups to print documents.
  services.printing.enable = true;

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
