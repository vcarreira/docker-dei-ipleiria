#!/bin/bash
# todo: alterar a localizacao do ficheiro .zip
# todo: chmod +x new-app.sh
# todo: copiar o script para a pasta /usr/local/bin (sudo)
unzip /opt/templates/EmptyProject-client-server-template.v2.zip
if [ "$1" != "" ]; then
    mv EmptyProject-client-server-template.v2 "$1"
fi
