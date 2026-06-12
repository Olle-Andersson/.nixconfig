{ config, pkgs, inputs, ... }: {

    imports = [ 
       ./hardware-configuration.nix
    ];

    networking.hostName = "nixos-btw";
}
