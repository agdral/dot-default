{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    git
    gita
    gitui
  ];
}
