# Disclaimer

This repository is for students enrolled on the Computer Engineering course @ Polytechnic of Leiria, Portugal. The remaining document will be in Portuguese.

# Aviso

Este repositório destina-se aos alunos do curso de Engenharia Informática do Instituto Politécnico de Leiria. Contém um conjunto de scripts para facilitar a criação de containers para algumas das disciplinas leccionadas no curso.

## Requisitos

Para utilizar os scripts fornecidos é necessário instalar previamente o [Docker](https://www.docker.com/community-edition#/download). Note-se que no caso do Windows é necessário ter o Windows 10, um processador com suporte para VT-X e SLAT.


## Sistemas Operativos

Para utilizar o container para a UC de Sistemas Operativos, é necessário clonar este repositório:
```bash
c:\workspace> git clone https://github.com/vcarreira/docker-dei-ipleiria
```

Em seguida, executar o script ```so-shell.bat``` e seguir as instruções. No caso de um sistema operativo não Windows é necessário executar o script ```so-shell.sh```. 

A imagem do container é criada da primeira vez que o script for executado. 

Em seguida é necessário copiar o script para uma pasta que esteja na ```PATH``` para que este possa ser chamado a partir de qualquer local. Sempre que se invocar o script ```pa-shell.sh|.bat```, é criado um container que mapeia a diretoria local para a pasta ```/home/so``` do container.

Para utilizadores Windows, o processo é explicado no vídeo seguinte:
[![Sistemas Operativos][video1thumb]][video1]

## Programação Avançada

Seguir o mesmo procedimento ao empregue para a secção *Sistemas Operativos* mas utilizar o script ```pa-shell.bat``` ou ```pa-shell.sh``` consoante o sistema operativo seja windows ou não.

## Aplicações para a Internet

Para utilizar o container NGINX para a UC de Aplicações para a Internet (1ª parte da matéria), é necessário clonar este repositório:
```bash
c:\workspace> git clone https://github.com/vcarreira/docker-dei-ipleiria
```

Em seguida, executar o script ```start-nginx.bat``` e seguir as instruções. No caso de um sistema operativo não Windows é necessário executar o script ```start-nginx.sh```. 

A imagem do container é criada da primeira vez que o script for executado. 

Em seguida é necessário copiar o script para uma pasta que esteja na ```PATH``` para que este possa ser chamado a partir de qualquer local. Sempre que se invocar o script ```start-nginx.sh|.bat```, caso ainda não exista é criado um container que mapeia a diretoria local para a pasta ```/var/www``` do container NGINX. 

Para terminar o servidor NGINX, basta escrever na linha de comando ```stop-nginx.bat``` (no caso do Windows) ou ```stop-nginx.sh``` nos restantes casos.


Para utilizadores Windows, o processo é explicado no vídeo seguinte:
[![Aplicações para a Internet][video2thumb]][video2]

### Laravel

Para a 2ª parte da matéria, podem recorrer ao gerador [docker-laravel](https://github.com/vcarreira/generator-docker-laravel) que permite criar os vários containers necessários a uma aplicação Laravel com serviço de queue e notificações.

## tmux shortcuts (on MAC)

vertical split - CTRL+B, %

horizontal split - CTRL + B,  "

swap - CTRL + B, o

quit - CTRL + B, x

[video1thumb]: https://img.youtube.com/vi/qge-8QOzt_8/0.jpg
[video1]: https://www.youtube.com/watch?v=qge-8QOzt_8
[video2thumb]: https://img.youtube.com/vi/eHlhspRmqvg/0.jpg
[video2]: https://www.youtube.com/watch?v=eHlhspRmqvg



