#!/bin/bash
# todo: alterar a localizacao do ficheiro .zip
# todo: chmod +x new-app.sh
# todo: copiar o script para a pasta /usr/local/bin (sudo)
unzip /opt/pa/EmptyProject-Templatev1.11.zip
if [ "$1" != "" ]; then
    mv EmptyProject-Templatev1.11 "$1"
fi
