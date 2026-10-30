{ pkgs, ... }:

{
  home.username = "vahin";
  home.homeDirectory = "/home/vahin";
  home.stateVersion = "26.05";
  home.pointerCursor = {
    enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };
}
