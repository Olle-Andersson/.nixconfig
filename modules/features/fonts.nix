{ pkgs, config, inputs, ... }: {
  
  fonts.packages = with pkgs; [
    iosevka
    fira
    ibm-plex
  ];
}
