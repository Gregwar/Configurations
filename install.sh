#!/bin/bash

echo "Installation de la configuration VIM"
cp vim/.vimrc ~/.vimrc

echo "Installation de la configuration BASH"
cp bash/.bashrc ~/.bashrc

echo "Installation de la configuration GEDIT"
cp "gregwar.xml" ~/.gnome2/gedit/styles/
cp "gedit-2" ~/.gconf/apps/
