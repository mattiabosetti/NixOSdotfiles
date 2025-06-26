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
      gs = "git status";
      cdNix = "cd /etc/nixos";
      editNix = "sudoedit /etc/nixos/configuration.nix";
      homeSwitch = "home-manager switch --flake .";
      nixosSwitch = "sudo nixos-rebuild switch --flake .";
      cdDot = "cd ~/.dotfiles/nix";
      editDot = "cd ~/.dotfiles/nix && code . ";
      clean = "sudo nix-env --delete-generations +5 && sudo nix-collect-garbage -d";
      gemini = "npx https://github.com/google-gemini/gemini-cli";

      ls="eza --icons --color=always --group-directories-first";
      ll="eza -alF --icons --color=always --group-directories-first";
      la="eza -a --icons --color=always --group-directories-first";
      l="eza -F --icons --color=always --group-directories-first";
      };
    };
}
