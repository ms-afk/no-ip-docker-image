# no-ip-updater
Docker image/container for the no-ip(.com) dynamic dns updater program 

## To build use: 
```sh
docker build -t "no-ip-updater:version_number" . #from this folder
```
or
```sh
make
```

[![Build standard image](https://github.com/ms-afk/no-ip-docker-image/actions/workflows/docker-image.yml/badge.svg?branch=main)](https://github.com/ms-afk/no-ip-docker-image/actions/workflows/docker-image.yml)

## To run use:
```sh
docker run -d --restart unless-stopped --name=no-ip-updater no-ip-updater:version_number
docker exec -it no-ip-updater noip2 -C
#follow instructions ...
docker restart no-ip-updater
```
or
```sh
make run_container
#follow instructions
```

## For the armhf version
See [armhf/README.md](armhf/README.md)
