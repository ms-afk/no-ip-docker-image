Dockerfile to use with armhf architectures (for ex.: raspberry pi's)

## To build use:
```sh
docker build -t "no-ip-updater:version_number-armhf" . #from this folder
```
or
```sh
make build_image_armhf
```

## To run use:
```sh
docker run -d --restart unless-stopped -name=no-ip-updater no-ip-updater:version_number-armhf
docker exec -it no-ip-updater noip2 -C
#follow instructions ...
docker restart no-ip-updater
```
or
```sh
make run_container_armhf
#follow instructions
```
