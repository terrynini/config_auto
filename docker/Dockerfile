FROM ubuntu
MAINTAINER terrynini38514

RUN apt-get -y install git
RUN git clone https://github.com/terrynini/config_auto
WORKDIR config_auto
RUN ./install.sh
RUN ./normal_user.sh
WORKDIR  /
CMD ["zsh"]
