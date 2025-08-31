{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    pulseaudio
    playerctl
    mpv
    pamixer
  ];
}
