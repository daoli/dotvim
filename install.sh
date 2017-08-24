#!/usr/bin/env bash

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
# pip install autopep8
pip3 install autopep8 flake8
