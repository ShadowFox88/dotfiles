{ pkgs, ... }:

{
  services.greetd = {
    enable = true;
    settings.default_session = {
      command = "${pkgs.niri}/bin/niri -c ${./greeter.kdl}";
      user = "greeter";
    };
  };

  programs.niri.enable = true;
}
