{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    zsh
    fish
    nushell
    starship
    atuin
    zoxide
    sd
    fcp
    fdupes
    btop
    wget
    wl-clipboard
    wev
    wakeonlan
    dust
    just
    trash-cli
  ];
}
