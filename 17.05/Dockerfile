FROM jpetazzo/dind

FROM docker:17.05-dind

RUN apk add --no-cache \
        python2 \
        py-pip \
        bash \
        iptables \
        ca-certificates \
        e2fsprogs \
    && pip install docker-compose \
    && apk del py-pip

COPY --from=0 /usr/local/bin/wrapdocker /usr/local/bin/wrapdocker

ENV LOG=file
ENTRYPOINT ["wrapdocker"]
CMD []
