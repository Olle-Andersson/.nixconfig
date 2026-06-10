{
  description = "My flake config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, home-manager, ... } @ inputs: let
    in {
      nixosConfigurations.nixos-btw = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [ 
	  ./modules/hosts/nixos-btw/configuration.nix
	  ./modules/features/base.nix
	  ./modules/features/sway.nix
	  ./modules/features/fonts.nix
        ];
      };
    };
}
