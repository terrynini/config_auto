#!/bin/bash                                                                                                

export NINI_DIR=$(dirname "$(readlink -f "$0")")

# setup python
python3 -m pip install --upgrade pip
python3 -m pip install --user  pwntools requests

# setup zsh 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# setup gdb
git clone https://github.com/pwndbg/pwndbg ~/pwndbg
wget -O ~/.gdbinit-gef.py -q https://gef.blah.cat/py
cd ~/pwndbg
./setup.sh

# replace config

cd $NINI_DIR 
cat config/zshrc >> $HOME/.zshrc
cat config/tmux.conf >> $HOME/.tmux.conf
cp config/vimrc $HOME/.vimrc
cp config/gdbinit $HOME/.gdbinit
