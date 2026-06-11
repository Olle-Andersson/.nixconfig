{ inputs, config, pkgs, ... }: {

    programs.neovim = {
  	    enable = true;
	    sideloadInitLua = true;
    };

    xdg.configFile."nvim" = {
        recursive = true;
        source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/nvim";
    };
}
