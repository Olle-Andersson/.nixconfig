{ config, pkgs, inputs, ... }:
{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  networking.hostName = "nixos-btw";

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
     mpv
     zathura
  ];
}
