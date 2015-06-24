#
# Dockerfile - OpenResty Proxy
#
FROM everdune/openresty-docker
MAINTAINER Robin Hos @ Everdune Mobile

# Nginx proxy configuration
ADD conf/mime.types /etc/nginx/conf.d/mime.types
ADD conf/app.conf /etc/nginx/conf.d/app.conf

# OpenResty app
RUN mkdir -p /usr/local/openresty/nginx/app

# Expose volume for app
VOLUME ["/usr/local/openresty/nginx/app"]
