#!/bin/bash                                                                                                

# setup python
pip install --upgrade pip

python -m pip install --user pwntools request pycrypto
python -m pip install --user ipython
python3 -m pip install --user ipython

# setup zsh 
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/longld/peda.git ~/peda

# replace config
cp config/zshrc $HOME/.zshrc
cp config/vimrc $HOME/.vimrc
 
# install pwngdb
cd ~/
git clone https://github.com/scwuaptx/Pwngdb.git 
cp ~/Pwngdb/.gdbinit ~/

# install hashcat
git clone https://github.com/hashcat/hashcat.git
cd hashcat
git submodule init
git submodule update
make
sudo make install
