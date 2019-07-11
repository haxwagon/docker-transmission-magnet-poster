FROM alpine:latest
MAINTAINER twoboxen <hawkins22gmail.com>

RUN apk add --no-cache transmission-cli

VOLUME /source

ENV PERIOD 300
ENV TRANSMISSION_URL http://localhost:9091

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
CMD ["/source"]
