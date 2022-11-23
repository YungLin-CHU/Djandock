FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

ARG APP_CODE_PATH_CONTAINER=/var/www
ARG NGINX_UPSTREAM_PORT=9000

RUN echo "upstream uwsgi { server workspace:${NGINX_UPSTREAM_PORT}; }" > /etc/nginx/conf.d/upstream.conf \
    && rm /etc/nginx/conf.d/default.conf

WORKDIR ${APP_CODE_PATH_CONTAINAER}

COPY uwsgi.ini /
COPY startup.sh /

EXPOSE 80 443
