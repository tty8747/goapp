FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl
RUN mkdir /app
COPY goapp /app/gocalc
ENV ex="curl http://localhost:8080/?a=33&b=67"
RUN echo $ex

VOLUME ["/app"]
WORKDIR /app
EXPOSE 8080

ENTRYPOINT ./gocalc
CMD ["/bin/bash", "-l"]
