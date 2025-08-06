{ config, pkgs, inputs, ... }:

{

  imports =
  [
    # ./homePrograms/homePrograms.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.username = "mattiab";
  home.homeDirectory = "/home/mattiab";

  home.stateVersion = "24.11"; 

  home.packages = with pkgs; [
    kdePackages.kcalc
    kdePackages.kate
    kdePackages.discover
    vscode
    obs-studio
    fastfetch
    starship
    lutris
    wine
    wine-wayland
    lazygit
    obsidian
    steam
    vesktop
    vimPlugins.nvchad
    appimage-run
    stow
    kdePackages.kdenlive
    qtcreator
    rustup
    kitty
    virt-manager
    qemu
    temurin-bin
    rofi
    nodejs_24
    gemini-cli
    dotnet-sdk_9
    libarchive
    cava
    tmux
    btop
          ];
  programs.git = {
    enable = true;
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
