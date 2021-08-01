FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade && apt-get install -y apt-utils && apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install -y nodejs
RUN npm install -g @ionic/cli

# docker build . -t ionic --force-rm