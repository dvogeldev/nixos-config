{ config, pkgs, ... }:

{
  # Install fonts
  fonts.fonts = with pkgs; [
    jetbrains-mono
    joypixels
    libertine
    roboto
  ];
