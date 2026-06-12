{ inputs, config, pkgs, ... }: {

  home.stateVersion = "26.05";

  imports = [];

  nixpkgs = {
    overlays = [];
    config = {
      allowUnfree = true;
    };
  };

    home = {
        username = "olle";
        homeDirectory = "/home/olle";
    };

    programs.home-manager.enable = true;
    programs.git.enable = true;
}
