{ config, pkgs, ... }: {
  users.users.mattiab = {
    shell = pkgs.fish;
    isNormalUser = true;
    description = "Mattia Bosetti";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };
}