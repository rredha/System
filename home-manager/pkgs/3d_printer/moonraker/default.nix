{ config, lib, ... }:

{
  services.moonraker =
  {
      enable = true;
      settings =
      {
        authorization = {
          core_domains = [
            "http://app.fluidd.xyz"
            "http://my.mainsail.xyz"
            "https://app.fluidd.xyz"
            "https://my.mainsail.xyz"
          ];
          trusted_clients = [
            "127.0.0.1/8"
            "127.0.0.1/16"
            "10.0.0.0/24"
          ];
        };
      };
  };

}
