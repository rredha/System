{ inputs, config, pkgs, lib, ... }:
{
 imports = [
    ./bash
    ./git
    ./lazygit
    #./lynx
    ./neovim
    ./tmux
    ./yt-dlp
 ];
}
