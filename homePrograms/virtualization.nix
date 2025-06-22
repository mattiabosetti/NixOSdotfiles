{ config, pkgs, ... }: {
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;

  users.users.<mattiab> = {
    extraGroups = [ "libvirtd" "kvm" ];
  };

  virtualisation.spiceUSBRedirection.enable = true; # opzionale per passaggio USB
}
