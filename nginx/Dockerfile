FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

ARG NGINX_UPSTREAM_PORT=9000

RUN echo "upstream uwsgi { server workspace:${NGINX_UPSTREAM_PORT}; }" > /etc/nginx/conf.d/upstream.conf \
    && rm /etc/nginx/conf.d/default.conf

EXPOSE 80 443
