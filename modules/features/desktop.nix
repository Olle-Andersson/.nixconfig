{ config, pkgs, inputs, ... }: {
    imports = [
        ./sway.nix
        ./nvim.nix
        ./fonts.nix
    ];
    
    environment.systemPackages = with pkgs; [
        mpv
        zathura
        firefox
        librewolf
    ];
}
