# syntax=docker/dockerfile:1
ARG DJANDOCK_PYTHON_VERSION=3

FROM python:${DJANDOCK_PYTHON_VERSION}

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY startup.sh /
COPY uwsgi.ini /

RUN apt update && \
    apt install dos2unix && \
    dos2unix /startup.sh && \
    apt remove dos2unix -y && \
    apt clean -y

RUN pip install uwsgi
