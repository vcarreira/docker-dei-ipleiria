#!/bin/bash
if [ "$1" == "" ]; then
    echo "Usage: $0 rootfolder";
    exit;
fi

if [ "$(docker images -q ainet-laravel)" == "" ]; then
    if [ -f docker-compose.yml ]; then
        docker-compose build ainet-laravel
    else
        echo "docker-compose.yml file is missing!!"
        echo "[PT] O ficheiro docker-compose.yml nao foi encontrado!!"
        echo
        exit 1
    fi
fi

if [ -f docker-compose.yml ]; then
    echo
    echo
    echo Copy this script to the folder you wish to serve as the root web page
    echo [PT] Copie este script para a pasta que pretende servir como raiz do sitio
    echo
    echo
fi

FOLDER="$(pwd)/$1"
PORT=80
docker run -d --name ainet-laravel -p $PORT:80 -v $FOLDER:/var/www ainet-laravel && echo "NGINX server listening on port $PORT"
