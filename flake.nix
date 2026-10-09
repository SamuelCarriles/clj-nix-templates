{
  description = "Reusable Nix Flake templates for Clojure projects";

  outputs = { self }: {
    templates = {

      clj-project = {
        path = ./templates/clojure/project;
        description = ''
          A basic Clojure project structure with REPL and test aliases,
          and src and test directories.
        '';
      };

      clj-deps = {
        path = ./templates/clojure/deps;
        description = ''
          A basic deps.edn for Clojure projects, including a :repl alias
          with nREPL, CIDER, and Rephrase middleware.
        '';

      };

      flake = {
        path = ./templates/flakes/std;
      };

      flake-minimal = {
        path = ./templates/flakes/min;
      };

      default = self.templates.clj-minimal;
    };
  };
}
