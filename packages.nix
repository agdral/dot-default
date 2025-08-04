{pkgs, ...}: {
  nix.settings.experimental-features = ["nix-command" "flakes"];

  environment.pathsToLink = ["/share/fish" "/share/zsh"];
  environment.systemPackages = with pkgs; [
    # Driver
    trash-cli  android-tools  python3  sqlite  unar  hplip  sqlcmd 

    # Yazi 
    ripgrep  fd  jq  fzf  ouch  glow  p7zip

    # Shell & Terminal
    zsh  fish  nushell  starship  atuin  zoxide  yazi  sd  fcp  fdupes  btop

    # Cli
    wget  wl-clipboard  wev  wakeonlan  dust  just  google-cloud-sdk

    # Sound & Video   
    pulseaudio  tidal-dl  playerctl  mpv

    # Git
    git  gita  gitui  delta
  ];

  fonts.packages = with pkgs; [
    noto-fonts  noto-fonts-cjk-sans  noto-fonts-emoji  fira-code  fira-code-symbols  nerd-fonts.jetbrains-mono
  ];

  system.stateVersion = "25.11"; 
}
