{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  home = {
    username = "mouna";
    homeDirectory = "/home/mouna";
    preferXdgDirectories = true;
  };

  # XDG configuration
  xdg.userDirs = {
   enable = true;
   createDirectories = true;
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  # home.packages = with pkgs; [ steam ];
}
