{ config, pkgs, inputs, ... }:

{

  imports =
  [
    ./homePrograms/homePrograms.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.username = "mattiab";
  home.homeDirectory = "/home/mattiab";

  home.stateVersion = "24.11"; 

  home.packages = [
    pkgs.kdePackages.kcalc
    pkgs.kdePackages.kate
    pkgs.kdePackages.discover
    pkgs.vscode
    pkgs.obs-studio
    pkgs.fastfetch
    pkgs.starship
    pkgs.lutris
    pkgs.wine
    pkgs.wine-wayland
    pkgs.lazygit
    pkgs.obsidian
    pkgs.steam
    pkgs.vesktop
    pkgs.vimPlugins.nvchad
    pkgs.appimage-run
    pkgs.stow
    pkgs.kdePackages.kdenlive
    pkgs.qtcreator
    pkgs.rustup
    pkgs.kitty
    pkgs.virt-manager
    pkgs.qemu
    pkgs.temurin-bin
  ];
  programs.git = {
    userName = "mattiabosetti";
    userEmail = "mattbos.2007@gmail.com";
  };

  services.kdeconnect = {
    enable = true;
    package = pkgs.kdePackages.kdeconnect-kde;
    indicator = true;
  };

  home.file = {
  };
  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
