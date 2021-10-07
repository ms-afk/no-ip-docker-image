#!/bin/sh
apk --purge del --no-cache .build-deps
rm alpine-build-env-installer.sh build-noip.sh alpine-build-env-remover.sh
