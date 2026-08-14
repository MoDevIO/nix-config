{
    description = "NixOS Configuration";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

        nur = {
            url = "github:nix-community/NUR";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        qylock.url = "github:Darkkal44/qylock";
        nixcord.url = "github:4evy/nixcord";

    };

    outputs = { nixpkgs, home-manager, qylock, nur, nixcord, ... }: {
        nixosConfigurations = {
            x1 = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";

                specialArgs = {
                    hostname = "x1";
                    keyboardLayout = "de";

                    inherit nixcord;
                };

                modules = [
                    ./hosts/x1

                    home-manager.nixosModules.home-manager
                    {
                    home-manager.extraSpecialArgs = {
                        firefox-addons = nur.legacyPackages.x86_64-linux.repos.rycee.firefox-addons;

                        keyboardLayout = "de";
                    };
                    }

                    qylock.nixosModules.default
                ];
            };
            
            t14 = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";

                specialArgs = {
                    hostname = "t14";
                    keyboardLayout = "gb";

                    inherit nixcord;
                };

                modules = [
                    ./hosts/t14

                    home-manager.nixosModules.home-manager
                    {
                    home-manager.extraSpecialArgs = {
                        firefox-addons = nur.legacyPackages.x86_64-linux.repos.rycee.firefox-addons;

                        keyboardLayout = "gb";
                    };
                    }

                    qylock.nixosModules.default
                ];
            };
        };
    };
}
