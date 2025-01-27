{ config, lib, ... }:

{
  services.moonraker =
  {
      user = "redha";
      enable = true;
      address = "192.168.0.101";
      settings =
      {
        authorization = {
          core_domains = [
            "*.local"
            "*://app.fluidd.xyz"
            "*://my.mainsail.xyz"
          ];
          trusted_clients = [
            "192.168.0.0/24"
          ];
        };
      };
  };

}
