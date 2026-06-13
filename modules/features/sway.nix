{ pkgs, config, inputs, ... }: {

  services.gnome.gnome-keyring.enable = true;

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraPackages = with pkgs;[
      wl-clipboard
      waybar
      mako
      swaybg
      rofi
      thunar
      foot
      brightnessctl
      swayidle
      swaylock
      grim
      bibata-cursors
      papirus-icon-theme
      nwg-look
      nordic
    ];
  };
   services.displayManager.ly.enable = true;

   services.power-profiles-daemon.enable = true;

}
