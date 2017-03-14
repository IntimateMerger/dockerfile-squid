FROM alpine:3.5

RUN apk add --no-cache acf-squid

COPY squid.conf /etc/squid/squid.conf

EXPOSE 3128

CMD /usr/sbin/squid -f /etc/squid/squid.conf -NYCd 1