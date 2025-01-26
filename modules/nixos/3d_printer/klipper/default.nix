{ config, lib, ... }:

{
  services.klipper =
  {
      user = "redha";
      group = "users";
      enable = true;

      settings = {
        printer = {
          kinematics = "cartesian";
          max_velocity = 300;
          max_accel = 3000;
          max_z_velocity = 5;
          max_z_accel = 100;
        };

        mcu = {
          serial = "/dev/serial/by-id/usb-1a86_USB_Serial-if00-port0";
        };
      };

  };

}
