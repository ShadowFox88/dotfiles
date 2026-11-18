
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vscode

    git
    gh

    # Nix development
    nixd
    nixfmt
    nil

    curl
    wget
    jq
    ripgrep
    tree
    gnumake
  ];

  programs.git.enable = true;
  programs.nix-ld.enable = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
