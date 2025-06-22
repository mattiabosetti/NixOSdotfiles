{ config, pkgs, ... }: {
  virtualisation.libvirtd.enable = true;

  users.users.mattiab = {
    isNormalUser = true;
    extraGroups = [ "libvirtd" "kvm" ];
  };
}
