{ config, pkgs, ... }: {
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "intel" ];
  hardware.opengl.enable = true;
  programs.xwayland.enable = true;
  services.xserver.xkb = {
    layout = "it";
    variant = "";
  };
}
