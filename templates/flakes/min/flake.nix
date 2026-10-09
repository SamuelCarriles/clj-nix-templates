{
  description = "Description for the project";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs =
    { pkgs, ... }:
    let
      system = "x86_64-linux";
    in
    {
      devShell.${system}.default = pkgs.mkShell {
        name = "project_shell";
        packages = [
          pkgs.clojure
          # pkgs.docker
        ];
      };
    };
}
