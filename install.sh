#!/bin/bash

echo "Installation de la configuration VIM"
cp vim/.vimrc ~/.vimrc

echo "Installation de la configuration BASH"
cp bash/.bashrc ~/.bashrc

echo "Installation de la configuration GEDIT"
if [ ! -d ~/.gnome2/gedit ]; then
    mkdir ~/.gnome2/gedit
fi
cp -R "gedit" ~/.gnome2/

gconftool --load gedit-2.xml
