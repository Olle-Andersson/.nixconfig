{ config, pkgs, inputs, ... }: {

    system.stateVersion = "26.05";

    users.users."olle" = {
        isNormalUser = true;
        description = "Olov Andersson";
        extraGroups = [ "networkmanager" "wheel" ];
    };

    nix.settings.allowed-users = [
        "olle"
    ];

    environment.systemPackages = with pkgs; [
        vim
        wget
        git
        fastfetch
        tmux
        stow
    ];

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    boot.kernelPackages = pkgs.linuxPackages_latest;

    nixpkgs.config.allowUnfree = true;

    networking.networkmanager.enable = true;
    services.openssh.enable = true;
    networking.firewall.enable = true;

    time.timeZone = "Europe/Stockholm";

    i18n.defaultLocale = "en_US.UTF-8";

    hardware.graphics.enable = true;

    i18n.extraLocaleSettings = {
        LC_ADDRESS = "sv_SE.UTF-8";
        LC_IDENTIFICATION = "sv_SE.UTF-8";
        LC_MEASUREMENT = "sv_SE.UTF-8";
        LC_MONETARY = "sv_SE.UTF-8";
        LC_NAME = "sv_SE.UTF-8";
        LC_NUMERIC = "sv_SE.UTF-8";
        LC_PAPER = "sv_SE.UTF-8";
        LC_TELEPHONE = "sv_SE.UTF-8";
        LC_TIME = "sv_SE.UTF-8";
    };

    console.keyMap = "sv-latin1";

    services.printing.enable = true;

    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
    };

    nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
