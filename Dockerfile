FROM docker:dind

RUN apk add docker-compose git

RUN apk add --no-cache -t .deps curl \
    && (curl -o- https://raw.githubusercontent.com/manifoldco/manifold-cli/master/install.sh | sh) \
    && apk del .deps
RUN apk add bash

COPY root/ /root/
RUN mkdir -p /usr/src/app/

ENV PATH="${PATH}:/root/.manifold/bin"
ENV LOG=file

ENTRYPOINT ["docker-entrypoint.sh"]
CMD []
