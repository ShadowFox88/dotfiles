{ pkgs, ... }:

{
  # apps that need system stuff otherwise they go into home manager.
  programs._1password.enable = true;
  programs._1password-gui = {
    enable = true;
    polkitPolicyOwners = [ "vahin" ];
  };
  programs.dux-shell.enable = true;

  # dev stuff
  programs.git.enable = true;
  programs.nix-ld.enable = true;

  # file manager
  programs.thunar.enable = true;
  services.gvfs.enable = true;
  services.tumbler.enable = true;
  services.udisks2.enable = true;

  environment.systemPackages = [
    (pkgs.writeShellScriptBin "rebuild" ''
      sudo nixos-rebuild "''${1:-switch}" --flake /etc/nixos#hades
    '')
  ];
}