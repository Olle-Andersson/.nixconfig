{ pkgs, config, inputs, ... }: {
  
  fonts.packages = with pkgs; [
    iosevka
    nerd-fonts.sauce-code-pro
  ];
}
