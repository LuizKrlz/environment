FROM luizkrlz/environment

MAINTAINER Luiz Carlos Rocha Correa

RUN curl https://install.meteor.com/ | sh

WORKDIR /home/app