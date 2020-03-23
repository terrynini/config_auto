#!/bin/bash                                                                                                

# setup python
pip3 install --upgrade pip
pip3 install --user  pwntools request pycrypto ipython

# setup zsh 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# setup gdb
git clone https://github.com/scwuaptx/Pwngdb.git  ~/Pwngdb
git clone https://github.com/pwndbg/pwndbg ~/pwngdb
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
git clone https://github.com/longld/peda.git ~/peda
cd ~/pwndbg
./setup.sh

# install hashcat
git clone https://github.com/hashcat/hashcat.git
cd hashcat
git submodule init
git submodule update
make
sudo make install

# replace config

cat config/zshrc >> $HOME/.zshrc
cp config/vimrc $HOME/.vimrc

# gdb config
 
