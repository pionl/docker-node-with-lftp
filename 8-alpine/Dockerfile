FROM node:8-alpine

MAINTAINER Martin Kluska <martin@kluska.cz>

RUN apk update \
	&& apk add lftp openssh-client \
	&& rm -rf /var/lib/apt/lists/*
