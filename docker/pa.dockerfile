FROM ubuntu:bionic

MAINTAINER "Vitor Carreira" <vitor.carreira@gmail.com>

WORKDIR /tmp

RUN mkdir /opt/templates

COPY EmptyProject-Templatev3.03.zip /opt/templates
COPY EmptyProject-client-server-template.v2.zip /opt/templates
COPY new-app.sh /usr/local/bin
COPY new-client-server.sh /usr/local/bin
COPY tmux-help.txt /usr/share/doc

RUN chmod +x /usr/local/bin/new-app.sh
RUN chmod +x /usr/local/bin/new-client-server.sh

RUN echo 'alias memcheck="valgrind --track-origins=yes --tool=memcheck --leak-check=full"' >> /etc/bash.bashrc

RUN echo "deb http://us.archive.ubuntu.com/ubuntu bionic main multiverse" >> /etc/apt/sources.list

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    build-essential \
    libc6-dev \
    glibc-doc \
    manpages \
    manpages-dev \
    manpages-posix \
    manpages-posix-dev \
    gdb \
    gdb-doc \
    valgrind \
    gengetopt \
    man-db \
    sudo \
    unzip \
    wget \
    tmux \
    ltrace \
    netcat \
    cppcheck \
    indent \
    pmccabe \
    imagemagick \
    net-tools \
    lsof \
    curl && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash pa

RUN echo pa:admin | chpasswd

RUN usermod -aG sudo pa

USER pa

WORKDIR /home/pa

VOLUME ["/home/pa"]

CMD ["/bin/bash", "--rcfile", "/etc/skel/.bashrc"]
