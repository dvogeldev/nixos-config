{ config, pkgs, ... }:

{
  # Install fonts
  fonts.fonts = with pkgs; [
    font-awesome-ttf
    jetbrains-mono
    joypixels
    libertine
    roboto
  ];
