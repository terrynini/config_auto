FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
MAINTAINER terrynini38514
ENV LC_CTYPE=C.UTF-8
COPY . /config_auto
WORKDIR config_auto
RUN ./install.sh
RUN ./normal_user.sh
WORKDIR  /
CMD ["zsh"]
