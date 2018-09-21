#!/bin/bash
# if no arguments are provided, template is extracted to the current folder
if [ "$1" != "" ]; then
    unzip -j /opt/templates/EmptyProject-Template.zip -d "$1"
else
    unzip -j /opt/templates/EmptyProject-Template.zip
fi
