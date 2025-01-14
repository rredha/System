{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    qutebrowser
  ];

  programs.qutebrowser.enable = true;

  programs.qutebrowser.settings = {
    content = {
      javascript.log_message.excludes = {
        "userscript:_qute_stylesheet": ["*Refused to apply inline style because it violates the following Content Security Policy directive: *"],
        "userscript:_qute_js": ["*TrustedHTML*"]
      };
    };
  };

}
