#!/usr/bin/env bash

# On Ubuntu
# sudo apt install neovim
# mkdir -p ~/.config/nvim
# cp ./init.vim ~/.config/nvim/init.vim
# python2 -m pip install -U pynvim
# python3 -m pip install -U pynvim

# .vim dir
if [ -e ~/.vim/bundle/Vundle.vim ]
then
    cd ~/.vim/bundle/Vundle.vim
    git pull
    cd -
else
    mkdir -p ~/.vim/bundle/
    # install VundleVim
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# .vimrc
cp _vimrc ~/.vimrc

vim +PluginInstall +qall
vim +PluginClean +qall
# pip install autopep8
pip3 install autopep8 flake8
