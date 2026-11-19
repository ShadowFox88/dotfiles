{ pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;
    packages = [ pkgs.lmodern ];
  };

  services.displayManager.dux-greeter = {
    enable = true;
    compositor.name = "niri";
    configHome = "/home/vahin";
  };

  programs.niri.enable = true;
  boot.plymouth.enable = true;
}