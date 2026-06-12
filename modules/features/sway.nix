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
    ];
  };
   # services.greetd. enable = true;
   # programs.regreet.enable = true;
   services.displayManager.ly.enable = true;

}
