{ pkgs, ... }:

{
  programs._1password.enable = true;
  programs._1password-gui = {
    enable = true;
    polkitPolicyOwners = [ "vahin" ];
  };
  programs.dux-shell.enable = true;

  environment.systemPackages = [ pkgs.git ];
}
