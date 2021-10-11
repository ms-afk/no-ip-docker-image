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

## To run use:
```sh
docker run -d --restart unless-stopped -name=no-ip-updater no-ip-updater:version_number
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
See armhf/README.md
