{ pkgs, config, inputs, ... }: {

    services.gnome.gnome-keyring.enable = true;

    programs.niri.enable = true;
    services.displayManager.ly.enable = true;
    programs.gtklock.enable = true;
    services.power-profiles-daemon.enable = true;

    environment.systemPackages = with pkgs; [
# Utilities "needed" for niri
        wl-clipboard
        waybar
        dunst
        swaybg
        rofi
        foot
        brightnessctl
        pavucontrol
        swayidle
        grim
        bibata-cursors
        papirus-icon-theme
        nwg-look
        nordic
# Basic apps, media player, image viewer, web browser...
        mpv
        zathura
        librewolf
        nemo
        swayimg
    ];
}
