FROM alpine:latest

MAINTAINER Patrick Pokatilo <docker-hub@shyxormz.net>

ENV LANG C
RUN if [ `uname -m` = "aarch64" ] ; then \
       apk add py3-pip; \
    fi
RUN apk update --no-progress && \
    apk add --no-cache --no-progress \
        bash \
        python3 \
        git \
        mercurial && \
    pip3 install --upgrade pip && \
    pip3 install 'requests>=2.8.1'

ADD scripts /opt/resource
