{ config, pkgs, ... }: {
  imports =
  [
    ./fish.nix
  ];
  environment.systemPackages = with pkgs; [
    prismlauncher
    home-manager
    nh
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    gcc
    firefox
    python314
  ];
    
  programs.neovim = {
  enable = true;
  defaultEditor = true; 
  };
}
