{ pkgs, ... }:

{
  environment.systemPackages = [
    (pkgs.writeShellScriptBin "rebuild" ''
      sudo nixos-rebuild "''${1:-switch}" --flake /etc/nixos#hades
    '')
  ];
}
