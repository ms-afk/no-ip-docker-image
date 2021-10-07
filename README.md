# no-ip-updater:v1

## To build use: 
```sh
docker build -t "no-ip-updater:v1" . from this folder
```
or
```sh
make
```

## To run use:
```sh
docker run -d --restart unless-stopped -name=no-ip-updater no-ip-updater:v1
docker exec -it no-ip-updater noip2 -C
#follow instructions ...
docker restart no-ip-updater
```
or
```sh
make run_container
#follow instructions
```
