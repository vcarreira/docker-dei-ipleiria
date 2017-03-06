@echo off
set IMAGE_NAME=

for /f %%i in ('docker images -q so-cdev') do set IMAGE_NAME=%%i

if "%IMAGE_NAME%" == "" (
    if exist docker-compose.yml (
        docker-compose build so-cdev
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
    echo Copy this script to the folder you wish to map
    echo [PT] Copie este script para a pasta que pretende mapear
    echo.
)

echo.
echo Sudo password: admin
echo.

docker run -it --name so-cdev -v "%cd%":/home/so --rm so-cdev
