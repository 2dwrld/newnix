{ config, pkgs, USERNAME, ... }:

{
    imports = [
        ../modules/modules.nix
    ];

    home = {
        username = "${USERNAME}";
        homeDirectory = "/home/${USERNAME}";
        stateVersion = "24.05";
    };

    home.packages = [
        pkgs.alacritty
    ];

    programs = {
        alacritty.enable = true;
        home-manager.enable = true;
    };

}
