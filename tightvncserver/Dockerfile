FROM ubuntu:21.04

RUN apt-get update && apt-get install -y locales && \
localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tightvncserver xfce4 vim autocutsel && \
apt-get clean && rm -rf /var/lib/apt/lists/*

COPY .vnc /root/.vnc 

WORKDIR /root/.vnc

RUN echo "startxfce4 & autocutsel -fork" >> xstartup

ENV USER=root

# cd /var/lib/docker/volumes/portainer_portainer_data/_data/compose/28
# docker build -t mt4vnc .
# docker run -it --rm --privileged -p 5901:5901 -p 6901:6901 mt4vnc
