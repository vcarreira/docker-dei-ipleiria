FROM ubuntu:xenial

MAINTAINER "Vitor Carreira" <vitor.carreira@gmail.com>

WORKDIR /tmp

RUN mkdir /opt/pa

COPY EmptyProject-Templatev1.11.zip /opt/pa
COPY new-app.sh /usr/local/bin

RUN chmod +x /usr/local/bin/new-app.sh

RUN echo 'alias memcheck="valgrind --track-origins=yes --tool=memcheck --leak-check=full"' > /etc/bash.bashrc

RUN echo "deb http://us.archive.ubuntu.com/ubuntu xenial main multiverse" >> /etc/apt/sources.list

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
    curl && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash pa

RUN echo pa:admin | chpasswd

RUN usermod -aG sudo pa

USER pa

WORKDIR /home/pa

VOLUME ["/home/pa"]

CMD ["/bin/bash"]
