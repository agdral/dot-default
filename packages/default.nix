{pkgs, ...}: {
  nix.settings.experimental-features = ["nix-command" "flakes"];
  environment.pathsToLink = ["/share/fish" "/share/zsh"];
  system.stateVersion = "25.11";
  imports = [
    ./drivers
    ./fonts
    ./git
    ./shell
    ./sound
    ./yazi
  ];
}
