{ pkgs, helium, ... }:

{
  programs.kitty.enable = true;
  programs.fuzzel.enable = true;
  programs.fastfetch.enable = true;
  programs.vesktop.enable = true;
  stylix.targets.vesktop.enable = false; # hopefully my colours are good again!
  programs.vscode.enable = true;
  stylix.targets.vscode.enable = false;
  programs.gh.enable = true;
  programs.jq.enable = true;
  programs.ripgrep.enable = true;
  programs.prismlauncher.enable = true;
  programs.btop.enable = true;

  home.packages = with pkgs; [
    nixd
    nixfmt
    nil

    curl
    wget
    tree
    gnumake

    helium.packages.${pkgs.stdenv.hostPlatform.system}.helium
  ];
}