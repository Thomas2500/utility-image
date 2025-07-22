FROM alpine:latest
MAINTAINER Thomas Bella <thomas+docker@bella.network>

RUN apk --no-cache upgrade && apk --no-cache add rsync openssh-client git wget curl dpkg sed grep coreutils findutils tar brotli python3 zstd jq gettext

# Provide git-tools package from upstream
RUN git clone https://github.com/MestreLion/git-tools.git /opt/git-tools
ENV PATH="${PATH}:/opt/git-tools"
