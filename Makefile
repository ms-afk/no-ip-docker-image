IMAGE_VERSION=1.0
IMAGE_VERSION_ARMHF=${IMAGE_VERSION}-armhf
IMAGE_NAME=no-ip-updater
CONTAINER_NAME=no-ip-updater
RUN_OPTIONS=-d --restart unless-stopped --name=${CONTAINER_NAME}

build_image:
	docker build -t ${IMAGE_NAME}:${IMAGE_VERSION} .
build_image_armhf:
	docker build -t ${IMAGE_NAME}:${IMAGE_VERSION_ARMHF} -f armhf/Dockerfile .
run_container:
	docker run ${RUN_OPTIONS} ${IMAGE_NAME}:${IMAGE_VERSION}
	docker exec -it ${CONTAINER_NAME} noip2 -C
	docker restart ${CONTAINER_NAME}
run_container_armhf:
	docker run ${RUN_OPTIONS} ${IMAGE_NAME}:${IMAGE_VERSION_ARMHF}
	docker exec -it ${CONTAINER_NAME} noip2 -C
	docker restart ${CONTAINER_NAME}
clean:
	$(info Stopping and removing container ${CONTAINER_NAME})
	@if [ "$$(docker container ls -a -q -f name=${CONTAINER_NAME})" != "" ]; then \
		docker stop ${CONTAINER_NAME}; \
		docker rm ${CONTAINER_NAME}; \
	fi
	$(info Removing image ${IMAGE_NAME}:${IMAGE_VERSION})
	@if [ "$$(docker images -q ${IMAGE_NAME}:${IMAGE_VERSION})" != "" ]; then \
		docker rmi $$(docker images -q ${IMAGE_NAME}:${IMAGE_VERSION}); \
	fi
	@if [ "$$(docker images -q ${IMAGE_NAME}:${IMAGE_VERSION_ARMHF})" != "" ]; then \
                docker rmi $$(docker images -q ${IMAGE_NAME}:${IMAGE_VERSION_ARMHF}); \
        fi
