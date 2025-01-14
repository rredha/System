{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:

{
  imports = [
      ./essentials
      ./tools
      ./gamedev
      ./engineering
      ./web
   ];
}
