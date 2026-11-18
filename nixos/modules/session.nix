{ pkgs, ... }:

let
  greeterConfig = pkgs.writeText "greeter.kdl" ''
    output "HDMI-A-5" {
        off
    }

    output "DP-4" {
        focus-at-startup
    }

    spawn-sh-at-startup "XDG_CACHE_HOME=/tmp ${pkgs.kitty}/bin/kitty --start-as=fullscreen ${pkgs.tuigreet}/bin/tuigreet --time --cmd ${pkgs.niri}/bin/niri-session; ${pkgs.niri}/bin/niri msg action quit --skip-confirmation"
  '';
in
{
  services.greetd = {
    enable = true;
    settings.default_session = {
      command = "${pkgs.niri}/bin/niri -c ${greeterConfig}";
      user = "greeter";
    };
  };

  programs.niri.enable = true;
}
