{
    description = "My flake config";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

	home-manager.url = "github:nix-community/home-manager";
	home-manager.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = { self, nixpkgs, home-manager, ... } @ inputs: let in {
        nixosConfigurations.nixos-btw = nixpkgs.lib.nixosSystem {
            specialArgs = { inherit inputs; };
            modules = [ 
                ./modules/hosts/nixos-btw/configuration.nix
                ./modules/features/base.nix
                ./modules/features/sway.nix
                ./modules/features/fonts.nix
            ];
        };
	
	homeConfigurations.olle = home-manager.lib.homeManagerConfiguration {
		pkgs = nixpkgs.legacyPackages.x86_64-linux;
		extraSpecialArgs = {inherit inputs;};
		modules = [
            ./home-manager/home.nix
            ./home-manager/nvim.nix
            ];
      	};
    };
}
