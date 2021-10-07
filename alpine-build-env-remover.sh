#!/bin/sh
apk --purge del --no-cache .build-deps
rm alpine-build-env-installer build-noip alpine-build-env-remover
