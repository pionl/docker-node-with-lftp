FROM node:10

MAINTAINER Martin Kluska <martin@kluska.cz>

RUN apt-get update \
	&& apt-get install -y lftp \
	&& rm -rf /var/lib/apt/lists/*
