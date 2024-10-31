{ inputs, config, pkgs, ... }: 

let
    USERNAME = "lad";
in

{
    imports =
        [
            ../packages.nix
            ../modules
            ./hardware-configuration.nix
            inputs.home-manager.nixosModules.home-manager
        ];

    disabledModules = [
        ./modules/xserver.nix
    ];

    home-manager = {
        extraSpecialArgs = { inherit inputs; USERNAME = USERNAME; };
        users = {
            ${USERNAME} = import ../../home/home.nix;
        };
    };

    programs.zsh.enable = true;

    time.timeZone = "Europe/Moscow"; # Set your time zone.
    i18n.defaultLocale = "en_US.UTF-8"; # Select internationalisation properties.
    nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes
    system.stateVersion = "24.05"; # Don't change it bro
}
