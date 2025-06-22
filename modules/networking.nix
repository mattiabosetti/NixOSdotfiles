{ config, pkgs, ... }:

{
  networking.hostName = "mattia-nixos"; # Define your hostname.
  networking.networkmanager.enable = true;

  networking.firewall.allowedTCPPortRanges = [
    { from = 1714; to = 1764; } # KDE Connect
  ];

  networking.firewall.allowedUDPPortRanges = [
    { from = 1714; to = 1764; } # KDE Connect
  ];
}
