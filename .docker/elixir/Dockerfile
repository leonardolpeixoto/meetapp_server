FROM elixir:1.9-alpine

LABEL maintainer="Leonardo Peixoto <leonardodelimapeixoto@gmail.com>"

RUN apk add --update \
    bash

COPY . /app


RUN mix local.hex --force &&\
    mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez

WORKDIR /app

EXPOSE 4000

CMD ["./run.sh"]