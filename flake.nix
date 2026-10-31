{
  description = "Development environment for Tinker's Rewoven Minecraft modpack";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          go
          packwiz
          git
          curl
          jq
          unzip
          zip
        ];

        shellHook = ''
          export GOPATH="$HOME/.local/share/go"
          export GOBIN="$GOPATH/bin"
          export PATH="$GOBIN:$PATH"

          echo "Tinker's Rewoven development environment"
          echo "Go: $(go version)"
          echo "Packwiz: $(packwiz --version 2>/dev/null || echo 'not installed yet')"
        '';
      };
    };
}
