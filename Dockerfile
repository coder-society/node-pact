FROM node:10.14.2-alpine

RUN apk add --upgrade libressl bash curl-dev ruby-dev build-base ruby ruby-io-console ruby-bundler docker

RUN gem install bigdecimal --no-document
RUN gem install pact_broker-client --no-document

# Source: https://github.com/sgerrand/alpine-pkg-glibc
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.29-r0/glibc-2.29-r0.apk

RUN apk add glibc-2.29-r0.apk