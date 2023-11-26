#!/bin/bash
# test

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root."
    exit
fi

apt -y update
apt -y upgrade

apt -y install git nmap gdb gdbserver make vim zsh curl net-tools wget file
apt install -y fonts-powerline 
apt install -y locales
apt install -y gcc g++ nasm 
apt install -y python3 python3-dev python3-pip ipython3
apt install -y build-essential
apt install -y libc6-i386 #make ubuntu 64bit able to execut ELF32
apt install -y tmux neovim

chsh -s /bin/zsh
