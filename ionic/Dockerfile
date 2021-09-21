FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y && apt-get install -y apt-utils && apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install -y nodejs
RUN npm install -g cordova && npm install -g @ionic/cli
RUN npm i cordova-res@latest --save
RUN npm install -g native-run
#RUN export NODE_OPTIONS=--max_old_space_size=4096
#COPY ./entrypoint.sh /usr/src/temp
#RUN chmod +777 usr/src/temp/entrypoint.sh
#CMD "/usr/src/temp/entrypoint.sh" 

# docker build . -t ionic --force-rm --no-cache