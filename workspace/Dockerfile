# syntax=docker/dockerfile:1
ARG DJANDOCK_PYTHON_VERSION=3

FROM python:${DJANDOCK_PYTHON_VERSION}

ARG INSTALL_NODE=true

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY startup.sh /
COPY uwsgi.ini /

RUN apt update && \
    if [ ${INSTALL_NODE} = true ]; then \
    	apt install nodejs npm -y \
    ;fi && \
    apt install dos2unix && \
    dos2unix /startup.sh && \
    apt remove dos2unix -y && \
    apt clean -y

RUN pip install uwsgi
