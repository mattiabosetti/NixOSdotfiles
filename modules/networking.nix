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

  # Firmware e permessi
  hardware.enableAllFirmware = true;

  # Kernel più recente (importante per RTL8822CE)
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Driver specifici per RTL8822CE
  boot.extraModulePackages = with config.boot.kernelPackages; [
    rtw88
  ];

  # Carica il modulo specifico per la tua scheda
  boot.kernelModules = [ "rtw_8822ce" ];

  # Parametri del kernel per RTL8822CE (risolve problemi comuni)
  boot.kernelParams = [
    "rtw_8822ce.disable_clkreq=1"
    "rtw_8822ce.disable_aspm=1"
  ];

  # Strumenti di rete
  environment.systemPackages = with pkgs; [
    pciutils
    iw
  ];

}
