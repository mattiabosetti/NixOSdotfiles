{ config, pkgs, ... }: {
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "it";
    variant = "";
  };
}