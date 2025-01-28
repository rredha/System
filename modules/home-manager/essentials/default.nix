{ inputs, config, pkgs, lib, ... }:
{
 imports = [
    ./bash
    ./git
    ./lazygit
    #./lynx
    ./neovim
    ./starship
    ./tmux
    ./yt-dlp
 ];
}
