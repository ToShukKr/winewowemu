FROM i386/alpine:3.10.2

RUN apk add --no-cache \
    wine=3.0.4-r1 \
    xvfb-run=1.20.4-r0 \
    gettext \
    freetype

RUN winecfg

COPY wowemu.key.example /tmp/wowemu.key.example

COPY ./docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/docker-entrypoint.sh"]
