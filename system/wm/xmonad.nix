{ config, lib, pkgs, ... }:

{
  services = {
    gnome3.gnome-keyring.enable = true;
    upower.enable = true;

    dbus = {
      enable = true;
      packages = [ pkgs.gnome3.dconf ];
    };

    xserver = {
      enable = true;

      layout = "us";

      libinput = {
        enable = true;
        disableWhileTyping = true;

      videoDrivers = [ "modesetting" ];
      useGlamor = true;

      };

      serverLayoutSection = ''
        Option "StandbyTime" "0"
        Option "SuspendTime" "0"
        Option "OffTime"     "0"
      '';

      displayManager = {
        defaultSession = "none+xmonad";
      };

      windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
      };

      xkbOptions = "ctrl:nocaps";
    };
  };

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  systemd.services.upower.enable = true;
}
