{ pkgs, lib, ... }:
{
    programs.kitty = {
    enable = true;
      font = {
        name = "proggy";
        package = pkgs.proggyfonts;
        size = 14;
      };
    };
}
