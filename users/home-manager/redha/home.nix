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

  # Setting qutebrowesr as my default web browser.
  xdg.mime.enable = true;
  xdg.mimeApps.defaultApplications = {
  "text/html" = ["org.qutebrowser.qutebrowser.desktop"];
  "x-scheme-handler/http" = ["org.qutebrowser.qutebrowser.desktop"];
  "x-scheme-handler/https" = ["org.qutebrowser.qutebrowser.desktop"];
  "x-scheme-handler/about" = ["org.qutebrowser.qutebrowser.desktop"];
  "x-scheme-handler/unknown" = ["org.qutebrowser.qutebrowser.desktop"];
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
