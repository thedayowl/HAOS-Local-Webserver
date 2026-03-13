ARG BUILD_FROM
FROM ${BUILD_FROM}

RUN apk add --no-cache lighttpd

COPY lighttpd.conf /etc/lighttpd/lighttpd.conf
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
```

The `BUILD_FROM` arg is injected by the HA add-on build system and provides the correct base image for the target architecture.

**3. `lighttpd.conf`**
```
server.modules = ("mod_accesslog")

server.document-root = "/config/local-www"
server.port = 8099
server.bind = "0.0.0.0"

mimetype.assign = (
  ".html" => "text/html",
  ".css"  => "text/css",
  ".js"   => "application/javascript",
  ".json" => "application/json",
  ".png"  => "image/png",
  ".jpg"  => "image/jpeg",
  ".svg"  => "image/svg+xml",
  ".ico"  => "image/x-icon",
  ".woff2" => "font/woff2"
)

accesslog.filename = "/proc/1/fd/1"
server.errorlog    = "/proc/1/fd/2"
