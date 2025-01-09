{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other NixOS modules here
  imports = [
    # If you want to use modules from other flakes (such as nixos-hardware):
    # inputs.hardware.nixosModules.common-cpu-amd
    # inputs.hardware.nixosModules.common-ssd

    # You can also split up your configuration and import pieces of it here:
    # ./users.nix

    # Import your generated (nixos-generate-config) hardware configuration
    ./hardware-configuration.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };

  nix = let
    flakeInputs = lib.filterAttrs (_: lib.isType "flake") inputs;
  in {
    settings = {
      # Enable flakes and new 'nix' command
      experimental-features = "nix-command flakes";
      # Opinionated: disable global registry
      flake-registry = "";
      # Workaround for https://github.com/NixOS/nix/issues/9574
      nix-path = config.nix.nixPath;
    };
    # Opinionated: disable channels
    channel.enable = false;

    # Opinionated: make flake registry and nix path match flake inputs
    registry = lib.mapAttrs (_: flake: {inherit flake;}) flakeInputs;
    nixPath = lib.mapAttrsToList (n: _: "${n}=flake:${n}") flakeInputs;
  };

  # FIXME: Add the rest of your current configuration

  # use the systemd-boot efi boot loader.
  boot.loader.systemd-boot.enable = true;
  # I Dont know why this option doesnt work anymore ?
  #boot.loader.efi.canTouchEfiVariables = true;


  # set your time zone.
  time.timezone = "africa/algiers";

  # select internationalisation properties.
  i18n.defaultlocale = "fr_fr.utf-8";

  i18n.extralocalesettings = { lc_address = "fr_fr.utf-8"; lc_identification = "fr_fr.utf-8"; lc_measurement = "fr_fr.utf-8";
    lc_monetary = "fr_fr.utf-8"; lc_name = "fr_fr.utf-8"; lc_numeric = "fr_fr.utf-8"; lc_paper = "fr_fr.utf-8"; lc_telephone =
      "fr_fr.utf-8"; lc_time = "fr_fr.utf-8";
  };

  # enable the x11 windowing system.
  services.xserver.enable = true;
  services.xserver.displaymanager.lightdm.enable = true;

  # enable dwm
  services.xserver.windowmanager.dwm.package = pkgs.dwm.overrideattrs {
    src = /home/redha/wrk/repo/dwm;
  };
  services.xserver.windowmanager.dwm.enable = true;

  # configure keymap in x11
  services.xserver.xkb = { layout = "fr"; variant = "bepo_latin9";
  };

  # configure console keymap
  console.keymap = "fr-bepo";

  # enable cups to print documents.
  services.printing.enable = true;

  # enable sound.
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.support32bit = true;

  # support pulseaudio in all applications
  nixpkgs.config.pulseaudio = true;
  hardware.pulseaudio.extraconfig = "load-module module-combine-sink";

  # enable touchpad support (enabled default in most desktopmanager).
  services.libinput.enable = true;


  # Enable networking
  networking.hostName = "toptop";
  networking.networkmanager.enable = true;

  # Enable network manager applet
  programs.nm-applet.enable = true;

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

  # This setups a SSH server. Very important if you're setting up a headless system.
  # Feel free to remove if you don't need it.
  services.openssh = {
    enable = true;
    settings = {
      # Opinionated: forbid root login through SSH.
      PermitRootLogin = "no";
      # Opinionated: use keys only.
      # Remove if you want to SSH using passwords
      PasswordAuthentication = true;
    };
  };

  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [
  curl
  dunst
  git
  htop
  mesa
  mesa.drivers
  nnn
  openssl
  picom
  rofi
  sxiv
  tmux
  unzip
  vim
  w3m
  wget
  xclip
  ];
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "24.05";
}
