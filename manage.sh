#!/bin/bash

printf "\n     1) Build\n     2) Run\n     0) Exit\n\n"

while [[ true ]];
do
    read -p "[\$OPTION]: " option
    case "$option" in 
    "2")
        docker run \
            -d \
            --name denix \
            -it \
            -v nix-root:/root \
            denix:dev
            ;;
    "1")
        docker build . -t denix:dev
        ;;
    "0")
        break
        ;;
    esac
done
