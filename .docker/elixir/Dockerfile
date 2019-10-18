FROM elixir:1.9-alpine

LABEL maintainer="Leonardo Peixoto <leonardodelimapeixoto@gmail.com>"

RUN apk add --update \
    bash

RUN apk add --no-cache openssl

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR /app
COPY ./src .

RUN ls
RUN mix local.hex --force &&\
    mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez


EXPOSE 4000

CMD [ "dockerize -wait tcp://elixir_db:5432", "./run.sh" ]