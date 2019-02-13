#!/bin/bash
if [ "$(docker images -q ainet-webserver)" == "" ]; then
    if [ -f docker-compose.yml ]; then
        docker-compose build ainet-webserver
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
    echo "Copy this script to the folder you wish to serve as the root web page"
    echo "[PT] Copie este script para a pasta que pretende servir como raiz do sitio"
    echo
    echo
fi

docker run -d --name ainet-webserver -p 8888:80 -v "$(pwd)":/var/www ainet-webserver && echo "NGINX server listening on port 8888"
