{ pkgs, personal, config, spotifast, ... }:

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
  programs.yazi.enable = true;

  xdg.configFile."hypr/hyprlock.conf".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/hypr/hyprlock.conf";
  xdg.configFile."niri/config.kdl".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/niri/config.kdl";
  xdg.configFile."dms/settings.json".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/dms/settings.json";

  home.packages = with pkgs; [
    nixd
    nixfmt
    nil

    curl
    wget
    tree
    gnumake
    uv
    python315

    hyprlock
    swayidle

    polychromatic

    spotify

    personal.packages.${pkgs.stdenv.hostPlatform.system}.helium
    spotifast.packages."${pkgs.stdenv.hostPlatform.system}".default
  ];
}