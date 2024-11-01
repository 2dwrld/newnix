{ config, lib, pkgs, ... }: 

let
  USERNAME = "lad";
in

{
    users.users.${USERNAME} = {
        shell = pkgs.zsh;
        isNormalUser = true;
        description = "${USERNAME}";
        extraGroups = [ "networkmanager" "wheel" "dialout" "plugdev" "video" ];
        packages = with pkgs; [];
    };

    services.getty.autologinUser = "${USERNAME}";
}
