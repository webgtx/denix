{ pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
    name="dev-env";
    buildInputs = [
        pkgs.git
        pkgs.go
        pkgs.glab
    ];
    shellHook = ''
        echo "Welcome to dev-env"
    '';
}