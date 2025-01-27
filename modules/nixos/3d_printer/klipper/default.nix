{ config, lib, ... }:

{
  services.klipper =
  {
      enable = true;
      user = "redha";
      group = "maker";
      logFile = "/var/lib/klipper/klipper.log";
      #firmwares = {
      #  mcu = {
      #    enable = true;
      #    configFile = "/home/redha/docs/creality.cfg";
      #    serial = "/dev/serial/by-id/usb-1a86_USB_Serial-if00-port0";
      #  };
      #};
      settings = {
        # Needed for moonraker
        pause_resume = { };
        display_status = { };
        virtual_sdcard.path = "/home/redha/docs/gcodes/";

        printer = {
          kinematics = "cartesian";
          max_velocity = 300;
          max_accel = 3000;
          max_z_velocity = 5;
          max_z_accel = 100;
        };

        mcu = {
          serial = "/dev/serial/by-id/usb-1a86_USB_Serial-if00-port0";
          restart_method = "command";
        };

        fan = {
          pin = "PA0";
        };

        heater_bed = {
          heater_pin = "PA2";
          sensor_type = "EPCOS 100K B57560G104F";
          sensor_pin = "PC4";
          control = "pid";
          # tuned for stock hardware with 50 degree Celsius target
          pid_Kp = 54.027;
          pid_Ki = 0.770;
          pid_Kd = 948.182;
          min_temp = 0;
          max_temp = 130;
        };

        extruder = {
          max_extrude_only_distance = 100.0;
          step_pin = "PB4";
          dir_pin = "PB3";
          enable_pin = "!PC3";
          microsteps = 16;
          rotation_distance = 34.406;
          nozzle_diameter = 0.400;
          filament_diameter = 1.750;
          heater_pin = "PA1";
          sensor_type = "EPCOS 100K B57560G104F";
          sensor_pin = "PC5";
          control = "pid";
          # tuned for stock hardware with 200 degree Celsius target
          pid_Kp = 21.527;
          pid_Ki = 1.063;
          pid_Kd = 108.982;
          min_temp = 0;
          max_temp = 250;
        };

        stepper_x = {
          step_pin = "PC2";
          dir_pin = "PB9";
          enable_pin = "!PC3";
          microsteps = 16;
          rotation_distance = 40;
          endstop_pin = "^PA5";
          position_endstop = 0;
          position_max = 235;
          homing_speed = 50;
        };

        stepper_y = {
          step_pin = "PB8";
          dir_pin = "PB7";
          enable_pin = "!PC3";
          microsteps = 16;
          rotation_distance = 40;
          endstop_pin = "^PA6";
          position_endstop = 0;
          position_max = 235;
          homing_speed = 50;
        };

        stepper_z = {
          step_pin = "PB6";
          dir_pin = "!PB5";
          enable_pin = "!PC3";
          microsteps = 16;
          rotation_distance = 8;
          endstop_pin = "^PA7";
          position_endstop = 0.0;
          position_max = 250;
        };
      };
  };
}
