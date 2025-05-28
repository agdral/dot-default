{pkgs, ...}: {
  nix.settings.experimental-features = ["nix-command" "flakes"];

  environment.pathsToLink = ["/share/fish" "/share/zsh"];
  environment.systemPackages = with pkgs; [
    # Driver
    trash-cli  android-tools  gifsicle  poppler_utils  python3  sqlite  unar  hplip  steam-run 
    
    # Yazi 
    unzip  ripgrep  poppler  ffmpegthumbnailer  fd  jq  fzf  imagemagick  exiftool  mediainfo  ouch  glow
    transmission_4  epub-thumbnailer  p7zip

    # Shell & Terminal
    zsh  fish  nushell  dash  starship  atuin  zoxide  yazi  sd  fcp  

    # Cli
    wget  wl-clipboard  wev  wakeonlan  dust  tio  just  bc  tldr  taskwarrior3  google-cloud-sdk

    # Sound & Video   
    pulseaudio  tidal-dl  playerctl  ffmpeg_6-full  mpv

    # Git
    git  gita  gitui  delta
  ];

  fonts.packages = with pkgs; [
    noto-fonts  noto-fonts-cjk-sans  noto-fonts-emoji  fira-code  fira-code-symbols  nerd-fonts.jetbrains-mono
  ];
  system.stateVersion = "24.11"; 
}
