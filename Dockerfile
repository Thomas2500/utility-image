FROM alpine:latest
MAINTAINER Thomas Bella <thomas+docker@bella.network>

RUN apk update
RUN apk add rsync openssh git wget curl
