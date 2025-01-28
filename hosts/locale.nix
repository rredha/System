{lib, ...}:
{
  # set your time zone.
  time.timeZone = lib.mkDefault "africa/algiers";

  # select internationalisation properties.
  i18n.defaultLocale = "fr_FR.UTF-8";

  #  i18n.extraLocaleSettings = {
  #  lc_address = "fr_FR.UTF-8";
  #  lc_identification = "fr_FR.UTF-8";
  #  lc_measurement = "fr_FR.UTF-8";
  #  lc_monetary = "fr_FR.UTF-8";
  #  lc_name = "fr_FR.UTF-8";
  #  lc_numeric = "fr_FR.UTF-8";
  #  lc_paper = "fr_FR.UTF-8";
  #  lc_telephone = "fr_FR.UTF-8";
  #  lc_time = "fr_FR.UTF-8";
  #};

  # configure keymap in x11
  services.xserver.xkb = { layout = "fr"; variant = "bepo_latin9";
  };

  # configure console keymap
  console.keyMap = "fr-bepo";
}
