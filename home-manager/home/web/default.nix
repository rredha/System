{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:

{
  imports = [
      ./qutebrowser
      ./brave
    #./firefox
   ];
}
