FROM node:11.9.0-alpine

MAINTAINER Luiz Carlos Rocha Correa

RUN npm config set unsafe-perm true

RUN apk update && \
  apk add bash && \
  apk add --no-cache curl && \
  touch $HOME/.profile && \
  curl -o- -L https://yarnpkg.com/install.sh | bash

WORKDIR /home/app