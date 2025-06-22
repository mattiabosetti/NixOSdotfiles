{ config, pkgs, ...}: {
  imports =
    [
      ./bluetooth.nix
      ./locale.nix
      ./bootloader.nix
      ./networking.nix
      ./xserver.nix
      ./audio.nix
      ./users.nix
      ./virtualization.nix
    ];
}
