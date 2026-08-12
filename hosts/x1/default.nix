{ config, pkgs, ... }:

{
  imports = [
      ./hardware-configuration.nix

      ../../modules/system/boot.nix
      ../../modules/system/nix.nix
      ../../modules/desktop/gnome.nix
      ../../modules/services
      ../../modules/programs
      ../../modules/system/users.nix
      ../../modules/locals/de.nix
    ];
}
