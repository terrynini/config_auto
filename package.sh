#!/bin/bash
# test

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root."
    exit
fi

apt-get -y update
apt-get -y upgrade

apt-get -y install git nmap gdb gdbserver make vim zsh
apt-get install -y fonts-powerline
apt-get install -y gcc g++ nasm
apt-get install -y python2 python3 python-dev
apt-get install -y python-pip python3-pip python-dev build-essential 
apt-get install -y libc6-i386 #make ubuntu 64bit able to execut ELF32
apt-get install -y silversearcher-ag global

chsh -s /bin/zsh

