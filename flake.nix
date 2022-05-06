{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.11";
  outputs = { self, pkgs }: {
    nixosConfigurations.tittyskittles = pkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ (import ./configuration.nix { inherit pkgs; }) ];
    };
  };
}
