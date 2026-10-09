{
  description = "Reusable Nix Flake templates for Clojure projects";
  outputs = { self }: {
    templates = {
      base = {
        path = ./templates/base;
        description = ''
          A basic Clojure project structure with REPL and test aliases,
          and src and test directories.
        '';
      };
      deps = {
        path = ./templates/deps;
        description = ''
          A basic deps.edn for Clojure projects, including a :repl alias
          with nREPL, CIDER, and Rephrase middleware.
        '';

      };
      default = self.templates.deps;
    };
  };
}
