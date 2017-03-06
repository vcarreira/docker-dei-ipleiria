#!/bin/bash
if [ "$(docker images -q so-cdev)" == "" ]; then
    if [ -f docker-compose.yml ]; then
        docker-compose build so-cdev
    else
        echo "docker-compose.yml file is missing!!"
        echo "[PT] O ficheiro docker-compose.yml nao foi encontrado!!"
        exit 1
    fi
fi

if [ -f docker-compose.yml ]; then
    echo
    echo
    echo Copy this script to the folder you wish to map
    echo [PT] Copie este script para a pasta que pretende mapear
fi

echo
echo "Sudo password: admin"

docker run -it --name so-cdev -v "$(pwd)":/home/so --rm so-cdev
