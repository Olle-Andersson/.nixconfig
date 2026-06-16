{ config, pkgs, inputs, ... }: {
    imports = [
        ./niri.nix
        ./nvim.nix
        ./fonts.nix
    ];
    
    environment.systemPackages = with pkgs; [
         kdePackages.kdenlive
         inkscape
         discord
    ];
}
