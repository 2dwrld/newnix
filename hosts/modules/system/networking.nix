{ inputs, config, pkgs, ... }: {
    networking = {
        hostName = "nix";
        networkmanager.enable = true;
    };
}
