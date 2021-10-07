FROM armhf/alpine:latest

LABEL mantainer="ms-afk"

ENV TERM=xterm

WORKDIR /home/root

COPY alpine-build-env-installer \
	build-noip \
	noip-full-installer\
	alpine-build-env-remover \
	keep-alive-noip \
	./

RUN ./noip-full-installer


ENTRYPOINT ["./keep-alive-noip"]
