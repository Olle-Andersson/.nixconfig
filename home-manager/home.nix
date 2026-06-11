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

    programs.neovim = {
  	enable = true;
	sideloadInitLua = true;
    };

  xdg.configFile."nvim" = {
    recursive = true;
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/nvim";
  };

  programs.home-manager.enable = true;
  programs.git.enable = true;
}
