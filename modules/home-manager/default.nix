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
      ./gamedev
      ./research
      ./essentials
      ./tools
      ./web
   ];

  home.packages = with pkgs; [
      fzf
      ripgrep
      gh
  ];
}
