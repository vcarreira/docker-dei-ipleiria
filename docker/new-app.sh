#!/bin/bash
# todo: alterar a localizacao do ficheiro .zip
# todo: chmod +x new-app.sh
# todo: copiar o script para a pasta /usr/local/bin (sudo)
unzip /opt/templates/EmptyProject-Templatev3.03.zip
if [ "$1" != "" ]; then
    mv EmptyProject-Templatev3.03 "$1"
fi
