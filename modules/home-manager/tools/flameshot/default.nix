{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    flameshot
  ];
  # Problem with the service
  #services.flameshot = {
  #  enable = true;
  #};
}
