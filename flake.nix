{
    description = "NixOS Configuration";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { nixpkgs, home-manager, ... }: {
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
                ];
            };
        };
    };
}