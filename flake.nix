{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {                                  # new
      url = "github:nix-community/stylix";      # new
      inputs.nixpkgs.follows = "nixpkgs";       # new
    };                                          # new
  };

  outputs = { nixpkgs, home-manager, stylix, ... }: {   # stylix added
    nixosConfigurations.hades = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        ./stylix.nix                            # new
        stylix.nixosModules.stylix              # new
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.vahin = import ./home.nix;
        }
      ];
    };
  };
}
