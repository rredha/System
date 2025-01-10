{ inputs, config, pkgs, lib, ... }:
{
 imports = [
    ./git
    ./mpv
    ./bash
    ./neovim
    ./tmux
    ./lynx
 ];
}
