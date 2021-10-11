FROM armhf/alpine:latest

LABEL mantainer="ms-afk"

ENV TERM=xterm

WORKDIR /home/root

COPY alpine-build-env-installer.sh \
	build-noip.sh \
	noip-full-installer.sh \
	alpine-build-env-remover.sh \
	keep-alive-noip.sh \
	./

RUN ./noip-full-installer.sh


ENTRYPOINT ["./keep-alive-noip.sh"]
