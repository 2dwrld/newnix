{
    description = "lad's NixOS config";

    inputs = {

        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        nixvim = {
            url = "github:nix-community/nixvim";
            inputs.nixpkgs.follows = "nixpkgs";
        };

    };

    outputs = { self, nixpkgs, home-manager, ... } @ inputs: 

        let
            system = "x86_64-linux";
        in 

        {
            nixosConfigurations.nix = nixpkgs.lib.nixosSystem {
                specialArgs = { 
                    inherit inputs; 
                    nixpkgs.config.allowUnfree = true; 
                    };

                modules = [
                    ./modules
                    ./hosts/modules
        		    ./hosts/packages.nix
                    ./hosts/configuration/configuration.nix

                    inputs.home-manager.nixosModules.default
                    inputs.nixvim.nixosModules.nixvim
                ];
            };

        };
}
