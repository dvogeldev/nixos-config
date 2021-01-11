{ config, lib, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        size = 14.0;
        normal = {
          family = "JetBrains Mono";
          style = "Regular";
          
        };
        bold = {
          style = "Bold";
          
        };
        italalic = {
          style = "Italic";
          
        };
        bold_italic = {
          style = "bold";
          
        };
        
      };
      background_opacity = 0.94;
      window.dynamic_title = true;
      cursor.style = "underline";
      colors.primary = {
        background = "#1b161f";
        foreground = "#f8f8f2";
      };

      cursor = {
        text = "#44475a";
        cursor = "#ffce50";
      };

      normal = {
        black = "#000000";
        red = "#ff5555";
        green = "#54c6b5";
        yellow = "#d5aa2a";
        blue = "#bd93f9";
        magenta = "#ff79c6";
        cyan = "#8be9fd";
        white = "#bfbfbf";
      };

      bright = {
        black = "#1b161f";
        red = "#ff6e67";
        green = "#5af78e";
        yellow = "#ffce50";
        blue = "#caa9fa";
        magenta = "#ff92d0";
        cyan = "#9aedfe";
        white = "#e6e6e6";
      };
      draw_bold_text_with_bright_colors = true;
    };
  }; 
}
