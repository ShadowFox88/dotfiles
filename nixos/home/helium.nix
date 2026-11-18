{ pkgs, ... }:

let
  pname = "helium";
  version = "0.22.1.1"; # when new ones come out update this

  src = pkgs.fetchurl {
    url = "https://github.com/helium-browser/helium-linux/releases/download/v${version}/helium-${version}-linux-x86_64.AppImage";
    hash = pkgs.lib.fakeHash; 
  };

  heliumAppImage = pkgs.appimageTools.wrapType2 {
    inherit pname version src;

    extraPkgs = pkgs: with pkgs; [
      libglvnd
      liberation_ttf
    ];
  };
in
{
  home.packages = [ heliumAppImage ];
}
