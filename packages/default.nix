{pkgs, ...}: {
  nix.settings.experimental-features = ["nix-command" "flakes"];
  environment.pathsToLink = ["/share/fish" "/share/zsh"];
  system.stateVersion = "25.11";
  imports = [
    ./drivers
    ./shell
    ./yazi
  ];
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    fira-code
    fira-code-symbols
    nerd-fonts.jetbrains-mono
  ];
}
