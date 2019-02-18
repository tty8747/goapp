FROM ubuntu:18.04

RUN apt-get update && apt-get -y install curl
RUN mkdir /app
COPY goapp /app/gocalc
ENV ex="curl http://localhost:8080/?a=33&b=67"
RUN echo $ex

WORKDIR /app

ENTRYPOINT ./gocalc
