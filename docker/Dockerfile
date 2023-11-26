FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
MAINTAINER terrynini38514
RUN apt update && apt -y install git
ENV LC_CTYPE=C.UTF-8
RUN git clone https://github.com/terrynini/config_auto
WORKDIR config_auto
RUN ./install.sh
RUN ./normal_user.sh
WORKDIR  /
CMD ["zsh"]
