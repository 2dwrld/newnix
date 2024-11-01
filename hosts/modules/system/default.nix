{ config, lib, pkgs, ... }: {
    imports = [
        ./bluetooth.nix
        ./bootloader.nix
        ./env.nix
        ./graphics.nix
        ./networking.nix
        ./performance.nix
        ./sound.nix
        ./trim.nix
        ./user.nix
        ./virtualisation.nix
        ./zram.nix
    ];
}
