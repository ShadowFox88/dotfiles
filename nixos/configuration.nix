{
  imports = [
    ./hardware-configuration.nix
    ./modules/core.nix
    ./modules/hardware.nix
    ./modules/desktop.nix
    ./modules/programs.nix
  ];

  system.stateVersion = "26.05";
}