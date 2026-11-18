{ pkgs, helium, ... }:

{
  programs.kitty.enable = true;

  programs.fuzzel.enable = true;

  programs.fastfetch.enable = true;

  programs.vesktop.enable = true;

  stylix.targets.vesktop.enable = false; # hopefully my colours are good again!

  programs.vscode.enable = true;
  stylix.targets.vscode.enable = false;
  home.file.".local/share/icons/hicolor/512x512/apps/vscode.png".source =
  "${pkgs.vscode}/share/icons/hicolor/1024x1024/apps/vscode.png"; # to make the icon appear in fuzzel

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