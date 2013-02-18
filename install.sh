#!/bin/bash

echo "Installation de la configuration VIM"
cp vim/.vimrc ~/.vimrc
mkdir ~/.vim 2> /dev/null
cp -R vim/.vim/* ~/.vim/

echo "Installation de la configuration BASH"
cp bash/.bashrc ~/.bashrc

echo "Configuring git"
git config --global user.name "Gregwar"
git config --global user.email "g.passault@gmail.com"
git config --global --add color.ui true
