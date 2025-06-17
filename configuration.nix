
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
  environment.systemPackages = with pkgs; [
 ];
  system.stateVersion = "25.05"; # Did you read the comment?
}
