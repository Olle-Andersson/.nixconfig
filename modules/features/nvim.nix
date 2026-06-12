
{ config, pkgs, inputs, ... }: {

    environment.systemPackages = with pkgs; [
    	neovim
        tree-sitter
        fzf
    ];
}
