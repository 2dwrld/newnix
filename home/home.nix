{ config, pkgs, USERNAME, ... }:

{
    imports = [
        ../modules
    ];

    home = {
        username = "${USERNAME}";
        homeDirectory = "/home/${USERNAME}";
        stateVersion = "24.05";
    };

    programs = {
        home-manager.enable = true;
    };

}
