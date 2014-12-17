#!/usr/bin/env bash 
#a script that downloads .vimrc and the bundles from atan009/vimrc

#cd #move to $HOME to sort everything later
wget https://github.com/atan009/vimrc/raw/master/.vimrc
svn checkout https://github.com/atan009/vimrc/trunk/.vim

