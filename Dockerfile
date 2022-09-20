FROM nixos/nix:master
WORKDIR /root
COPY shell.nix /root
ENTRYPOINT nix-shell shell.nix