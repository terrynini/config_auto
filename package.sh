#!/bin/bash
# test

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root."
    exit
fi

apt-get -y update
apt-get -y upgrade

apt-get -y install git nmap gdb gdbserver make
apt-get install -y git fonts-powerline
apt-get install -y gcc g++ nasm
apt-get install -y build-essential
apt-get install -y python2 python3 python-dev
apt-get install -y libc6-i386 #make ubuntu 64bit able to execut ELF32
apt-get install -y silversearcher-ag global

pip install pwntools request pycrypto

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

cp ./zshrc $HOME/.zshrc
cp ./vimrc $HOME/.vimrc

chsh -s /bin/zsh

