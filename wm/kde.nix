{ config, pkgs, ... }:
{
 
  services.displayManager.sddm = {
    theme = "breeze-dark";
    settings = {
    General = {
      Background = "/home/mattiab/Pictures/Wallpapers/15-Sequoia-Sunrise.png";
    };
  };
  };

  services.desktopManager.plasma6 = {
    enable = true;  
  };

}
