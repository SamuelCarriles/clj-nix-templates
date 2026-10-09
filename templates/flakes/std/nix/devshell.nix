{
  perSystem =
    { pkgs, ... }:
    let
      jdk = pkgs.temurin-bin-21; # use the JDK of your choice
      clojure = pkgs.clojure.override { inherit jdk; };
    in
    {
      devShells.default = pkgs.mkShell {
        name = "project_shell";
        packages = [
          clojure
          jdk
          # pkgs.docker
        ];
      };
    };
}
