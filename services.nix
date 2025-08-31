{pkgs, ...}: {
  services = {
    dbus.enable = true;
    gvfs.enable = true;
    openssh = {
      enable = true;
      settings.PermitRootLogin = "yes";
    };
    flatpak.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      pulse.enable = true;
      wireplumber.enable = true;
    };
    xserver = {
      xkb = {
        layout = "us";
        variant = "altgr-intl";
      };
    };
    printing = {
      enable = true;
      drivers = [pkgs.hplip];
    };
  };  

  programs = {
    adb.enable = true;
    hyprland = {
      enable = true;
      withUWSM = true;
    };
    direnv.enable = true;
    dconf.enable = true;
  };
}
