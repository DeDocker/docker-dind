FROM docker:17.05-dind

RUN apk add --no-cache python2 py-pip \
    && pip install docker-compose \
    && apk del py-pip
