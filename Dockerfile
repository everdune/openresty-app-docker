#
# Dockerfile - OpenResty Proxy
#
FROM rehos/openresty-docker
MAINTAINER Robin Hos <robin.hos@gmail.com>

# Nginx proxy configuration
ADD conf/mime.types /etc/nginx/conf.d/mime.types
ADD conf/app.conf /etc/nginx/conf.d/app.conf

# OpenResty app
RUN mkdir -p /usr/local/openresty/nginx/app

# Expose volume for app
VOLUME ["/usr/local/openresty/nginx/app"]
