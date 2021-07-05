FROM docker:dind

RUN apk update
RUN apk add docker-compose git bash curl

COPY bin/m /usr/bin/m
RUN mkdir -p /usr/src/app/

ENV LOG=file

ENTRYPOINT ["docker-entrypoint.sh"]
CMD []
