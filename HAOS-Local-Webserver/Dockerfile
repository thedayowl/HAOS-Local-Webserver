ARG BUILD_FROM
FROM ${BUILD_FROM}

RUN apk add --no-cache lighttpd

COPY lighttpd.conf /etc/lighttpd/lighttpd.conf
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]

