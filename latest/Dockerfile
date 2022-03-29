FROM docker:dind

RUN apk update
RUN apk add docker-compose git bash curl ncurses net-tools jq
RUN apk cache clean; rm -rf /var/cache/apk/*

COPY bin/m /usr/bin/m
COPY bin/waitforurl /usr/bin/waitforurl
COPY bin/envfileparse /usr/bin/envfileparse
RUN mkdir -p /usr/src/app/

ENV LOG=file

ENTRYPOINT ["docker-entrypoint.sh"]
CMD []
