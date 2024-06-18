{
  description = "my epic vims collection";

  inputs = {
      nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    caddy =
      pkgs.mkShell
        {
          buildInputs = [
            pkgs.caddy
          ];

          shellHook = ''
            echo "hello mom"
            fish
          '';
        };
  };
}
