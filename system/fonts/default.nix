{ config, pkgs, ... }:

{
  # Install fonts

  nixpkgs.config = {
    allowUnfree = true;
    joypixels.acceptLicense = true;
  };

  fonts.fonts = with pkgs; [
    font-awesome-ttf
    jetbrains-mono
    joypixels
    libertine
    roboto
  ];
}
