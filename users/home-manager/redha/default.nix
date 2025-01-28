# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:

{
  imports = [
      ./home.nix
   ];

  nixpkgs = {
    overlays = [
    ];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };


  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;

  # Default packages
  home.packages = with pkgs; [
      fzf
      ripgrep
      gh
  ];
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11"; # Please read the comment before changing.
}
