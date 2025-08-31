{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    android-tools
    python3
    sqlite
    unar
    hplip
    sqlcmd
    xdg-utils
    google-cloud-sdk
  ];
}
