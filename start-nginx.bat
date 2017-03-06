@echo off
set IMAGE_NAME=

for /f %%i in ('docker images -q ainet-webserver') do set IMAGE_NAME=%%i

if "%IMAGE_NAME%" == "" (
    if exist docker-compose.yml (
        docker-compose build ainet-webserver
    ) else (
        echo docker-compose.yml file is missing!!
        echo [PT] O ficheiro docker-compose.yml nao foi encontrado!!
        echo.
        exit /B 1
    )
)

if exist docker-compose.yml (
    echo.
    echo.
    echo Copy this script to the folder you wish to serve as the root web page
    echo [PT] Copie este script para a pasta que pretende servir como raiz do sitio
    echo.
)

docker run -d --name ainet-webserver -p 8888:80 -v "%cd%":/var/www ainet-webserver && echo "NGINX server listening on port 8888"
