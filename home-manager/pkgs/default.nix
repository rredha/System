{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:

{
  imports = [
      ./3d_printer

      ./engineering
      ./essentials
      ./gamedev
      ./research
      ./tools
      ./web
   ];

  home.packages = with pkgs; [
      fzf
      ripgrep
      gh
  ];
}
