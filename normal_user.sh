#!/bin/bash                                                                                                

export NINI_DIR=$(dirname "$(readlink -f "$0")")

# setup python
pip3 install --upgrade pip
pip3 install --user  pwntools request pycrypto ipython
pip3 install --user keystone-engine ropper keystone

# setup zsh 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# setup gdb
git clone https://github.com/scwuaptx/Pwngdb.git  ~/Pwngdb
git clone https://github.com/pwndbg/pwndbg ~/pwngdb
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
git clone https://github.com/longld/peda.git ~/peda
cd ~/pwngdb
./setup.sh

# replace config

cd $NINI_DIR 
cat config/zshrc >> $HOME/.zshrc
cat config/tmux.conf >> $HOME/.tmux.conf
cp config/vimrc $HOME/.vimrc
cp config/gdbinit $HOME/.gdbinit

