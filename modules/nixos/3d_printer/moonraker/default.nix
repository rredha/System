{ config, lib, ... }:

{
  services.moonraker =
  {
      user = "redha";
      group = "maker";
      enable = true;
      address = "0.0.0.0";
      settings =
      {
        authorization = {
          core_domains = [
            "*.local"
            "*://my.mainsail.xyz"
          ];
          trusted_clients = [
            "192.168.0.0/24"
          ];
        };
      };
  };

}
