{
  description = "Dotfile Default";

  outputs = {...}: {
    nixosModules.default = {...}: {
      imports = [
        ./packages.nix
        ./services.nix
      ];
    };
  };
}
