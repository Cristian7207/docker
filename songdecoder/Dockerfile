FROM ionic
ARG APPLICATION_NAME
WORKDIR /usr
RUN yes y | while read si; do sleep 20 ; echo $si; done | ionic start ${APPLICATION_NAME} blank --type angular --no-interactive --no-confirm
RUN export NODE_OPTIONS=--max_old_space_size=4096

# check that the new value was applied por default 8192 max 524288
RUN sysctl -w fs.inotify.max_user_watches=524288
WORKDIR /usr/${APPLICATION_NAME}
# ENTRYPOINT if [ "$(ls /usr/${APPLICATION_NAME}/src)" ]; then rm -r /usr/temp/${APPLICATION_NAME}/src && mv /usr/temp/${APPLICATION_NAME}/* /usr/${APPLICATION_NAME} && echo "Archivos src Conservados"; else cd /usr/temp && mv ${APPLICATION_NAME}/src/* /usr/${APPLICATION_NAME}/src && rmdir /usr/temp/${APPLICATION_NAME}/src && mv /usr/temp/${APPLICATION_NAME}/* /usr/${APPLICATION_NAME}; fi && cd /usr/${APPLICATION_NAME} && ionic serve --lab
# docker build --build-arg APPLICATION_NAME=songdecoder . -t songdecoder --force-rm