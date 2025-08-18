
{ config, pkgs, ... }:
{
  imports =
    [
      ./imports.nix# Include the results of the hardware scan.
    ];
  console.keyMap = "it2";
  services.printing.enable = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  services.flatpak.enable = true;
  nix.settings.substituters = [
    "https://cache.nixos.org/"
    "https://nix-community.cachix.org"
  ];
  nix.settings.trusted-public-keys = [
    "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
  ];
  environment.systemPackages = with pkgs; [
    pciutils
 ];
  system.stateVersion = "25.05"; # Did you read the comment?
}
