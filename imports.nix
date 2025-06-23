{ config, pkgs, ... }: {
  imports =
    [
      ./hardware-configuration.nix
      ./programs/programs.nix
      ./modules/modules.nix
      ./wm/kde.nix
      ./wm/hyprland.nix
    ];

}
