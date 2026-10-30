{
  imports = [
    ./hardware-configuration.nix
    ./modules/boot.nix
    ./modules/networking.nix
    ./modules/locale.nix
    ./modules/nix.nix
    ./modules/users.nix
    ./modules/graphics.nix
    ./modules/bluetooth.nix
    ./modules/audio.nix
    ./modules/session.nix
    ./modules/programs.nix
    ./modules/fonts.nix
  ];

  system.stateVersion = "26.05";
}
