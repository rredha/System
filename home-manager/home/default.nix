{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:

{
  imports = [
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
