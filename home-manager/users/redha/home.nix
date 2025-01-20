{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  home = {
    username = "redha";
    homeDirectory = "/home/redha";
    preferXdgDirectories = true;
  };

  # XDG configuration
  xdg.userDirs = {
   enable = true;
   createDirectories = true;

   desktop = "/home/redha/toSort";
   documents = "/home/redha/docs";
   download = "/home/redha/dwn";
   music = "/home/redha/audio";
   pictures = "/home/redha/imgs";
   videos = "/home/redha/vids";
   templates = "/home/redha/recipe";
   publicShare = "/home/redha/share";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  # home.packages = with pkgs; [ steam ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
