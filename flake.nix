{
    description = "NixOS Configuration";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        qylock.url = "github:Darkkal44/qylock";


    };

    outputs = { nixpkgs, home-manager, qylock, ... }: {
        nixosConfigurations = {
            x1 = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";

                specialArgs = {
                    hostname = "x1";
                    keyboardLayout = "de";
                };

                modules = [
                    ./hosts/x1

                    home-manager.nixosModules.home-manager
                    {
                    home-manager.extraSpecialArgs = {
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
                };

                modules = [
                    ./hosts/t14

                    home-manager.nixosModules.home-manager
                    {
                    home-manager.extraSpecialArgs = {
                        keyboardLayout = "gb";
                    };
                    }

                    qylock.nixosModules.default
                ];
            };
        };
    };
}
