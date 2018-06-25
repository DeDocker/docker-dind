FROM jpetazzo/dind

FROM docker:dind

RUN apk add --no-cache \
        python2 \
        py-pip \
        bash \
        iptables \
        ca-certificates \
        e2fsprogs \
    && pip install docker-compose \
    && apk del py-pip

COPY install /install/
RUN /install/torus-cli \
    && torus prefs set core.hints false \
    && torus prefs set core.progress false

COPY bin /usr/bin/

COPY --from=0 /usr/local/bin/wrapdocker /usr/local/bin/wrapdocker
COPY dmsetup /usr/bin/dmsetup

RUN echo "@next http://dl-cdn.alpinelinux.org/alpine/v3.8/main" >> /etc/apk/repositories \
    && apk add --no-cache coreutils@next

ENV LOG=file
ENTRYPOINT ["wrapdocker"]
CMD []
