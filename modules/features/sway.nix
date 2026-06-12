{ pkgs, config, inputs, ... }: {

  services.gnome.gnome-keyring.enable = true;

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraPackages = with pkgs;[
      wl-clipboard
      waybar
      mako
      tuigreet
      swaybg
      rofi
      thunar
      foot
      brightnessctl
      swayidle
      swaylock
      grim
    ];
  };
    services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = ''
        ${pkgs.tuigreet}/bin/tuigreet 
        '';
        user = "greeter";
      };
    };
  };

}
