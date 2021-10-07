#!/bin/sh
apk upgrade
apk update
apk add --no-cache --virtual .build-deps \
	wget \
	make \
	gcc \
	musl-dev

apk add ca-certificates
update-ca-certificates
