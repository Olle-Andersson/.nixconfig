{ pkgs, config, inputs, ... }: {

  services.gnome.gnome-keyring.enable = true;

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraPackages = with pkgs;[
      wl-clipboard
      mako
      swaybg
      rofi
      foot
      brightnessctl
      swayidle
      swaylock
      grim
    ];
  };
}
