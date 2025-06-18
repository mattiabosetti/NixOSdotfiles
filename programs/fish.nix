{ config, pkgs, ... }: {
 environment.systemPackages = with pkgs; [
    fishPlugins.done
    fishPlugins.fzf-fish
    fishPlugins.forgit
    fishPlugins.hydro
    fzf
    fishPlugins.grc
    grc
  ];
    programs.fish = {
    enable = true;

    shellAliases = {
      ls = "ls -l";
      la = "ls -a";
      gs = "git status";
      cdNix = "cd /etc/nixos";
      editNix = "sudoedit /etc/nixos/configuration.nix";
      homeSwitch = "home-manager switch";
      nixosSwitch = "sudo nixos-rebuild switch";
      editHome = "code ~/.config/home-manager/";

      ls="eza --icons --color=always --group-directories-first";
      ll="eza -alF --icons --color=always --group-directories-first";
      la="eza -a --icons --color=always --group-directories-first";
      l="eza -F --icons --color=always --group-directories-first";
      };
    };
}
