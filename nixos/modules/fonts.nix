{ pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;
    packages = [ pkgs.lmodern ];
  };
}
