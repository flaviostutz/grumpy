FROM golang:1.14.0-alpine3.11

RUN apk add --update --no-cache \
    build-base cmake python2 py-pip git

RUN pip install grumpy_tools

WORKDIR /tmp
RUN git clone https://github.com/grumpyhome/grumpy

WORKDIR /tmp/grumpy/grumpy-runtime-src
RUN make install

WORKDIR /root

