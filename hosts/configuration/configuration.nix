{ inputs, config, pkgs, ... }: 

let
    USERNAME = "lad";
in

{
    imports =
        [
            ../packages.nix
            ../modules/system
            ./hardware-configuration.nix
            inputs.home-manager.nixosModules.home-manager
        ];

    disabledModules = [
        ../modules/xserver.nix
    ];

    home-manager = {
        extraSpecialArgs = { inherit inputs; USERNAME = USERNAME; };
        users = {
            ${USERNAME} = import ../../home/home.nix;
        };
    };

    programs = {
        zsh.enable = true;
        nixvim.enable = true;
    }; 

    time.timeZone = "Europe/Moscow"; 
    i18n.defaultLocale = "en_US.UTF-8"; 
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    system.stateVersion = "24.05"; 
}
