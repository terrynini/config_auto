#!/bin/bash
# test

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root."
    exit
fi

apt-get -y update
apt-get -y upgrade

apt-get -y install git nmap gdb gdbserver make vim zsh curl net-tools wget
apt-get install -y fonts-powerline 
apt-get install -y locales
apt-get install -y gcc g++ nasm 
apt-get install -y python3 python3-dev python3-pip ipython3
apt-get install -y build-essential fasd
apt-get install -y libc6-i386 #make ubuntu 64bit able to execut ELF32
apt-get install -y silversearcher-ag #global
apt-get install -y libcurl4-openssl-dev

chsh -s /bin/zsh

