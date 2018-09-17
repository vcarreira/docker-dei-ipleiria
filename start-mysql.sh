#!/bin/bash
if [ "$1" == "" ]; then
    echo "Usage: $0 dbname";
    exit;
fi

docker run --name ainet-db -e MYSQL_ROOT_PASSWORD=homestead -e MYSQL_DATABASE=$1 -e MYSQL_USER=homestead -e MYSQL_PASSWORD=homestead --network container:ainet-webserver --rm -d mysql:5.7
