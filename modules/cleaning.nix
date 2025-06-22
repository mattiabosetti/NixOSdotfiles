{ config, ... }: {
  nix.gc.automatic = true;
  nix.gc.options = "--delete-older-than 5";
  nix.settings.auto-optimise-store = true;
}
