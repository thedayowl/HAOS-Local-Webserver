#!/usr/bin/with-contenv bashio

# Create the served directory if it doesn't exist yet
mkdir -p /config/local-www

# Drop a placeholder index if the folder is empty
if [ ! -f /config/local-www/index.html ]; then
  echo "<h1>Local WWW Server is running</h1>" > /config/local-www/index.html
fi

bashio::log.info "Starting lighttpd on port 8099..."
bashio::log.info "Serving files from /config/local-www"

exec lighttpd -D -f /etc/lighttpd/lighttpd.conf
