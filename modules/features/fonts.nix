{ pkgs, config, inputs, ... }: {
  
  fonts.packages = with pkgs; [
    iosevka
  ];
}
