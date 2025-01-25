{ config, lib, ... }:

{
  services.moonraker =
  {
      user = "redha";
      enable = true;
      address = "0.0.0.0";
      settings =
      {
        authorization = {
          core_domains = [
            "*.local"
            "*.lan"
            "*://app.fluidd.xyz"
            "*://my.mainsail.xyz"
          ];
          trusted_clients = [
            "10.0.0.0/8"
            "127.0.0.0/8"
          ];
        };
      };
  };

}
