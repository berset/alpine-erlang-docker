FROM alpine

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && apk add erlang@testing
ADD lib /usr/lib/erlang/lib

CMD ["/bin/sh"]
