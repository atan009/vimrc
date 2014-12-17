#!/usr/bin/env bash 
#a script that downloads .vimrc and the bundles from atan009/vimrc

#move to $HOME to sort everything later
cd

#download .vimrc from atan009/vimrc
wget https://github.com/atan009/vimrc/raw/master/.vimrc 

#download the autoload and bundle folder
#inside autoload, there will be a file called pathogen, which is plugin#0
svn checkout https://github.com/atan009/vimrc/trunk/.vim

#maunuall download all the plugins for user
#Plugin #1 - NERDtree
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
#:Helptags
#:help NERD_tree.txt

#Plugin #2 - SuperTab
cd ~/.vim/bundle
git clone https://github.com/ervandew/supertab.git

#Plugin #3 - Solarized
#clone
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
#move
mv vim-collors-solarized ~/.vim/bundle/

#Plugin #4 - Syntastic
cd ~/.vim/bundle
git clone https://github.com/scrooloose/syntastic.git
#:Helptags

#Plugin #5 - NERDcommenter
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdcommenter.git

#Plugin #6 - Surround
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-surround.git
#:Helptags
#:help surround

#Plugin #7 - EasyMotion
git clone https://github.com/Lokaltog/vim-easymotion ~/.vim/bundle/vim-easymotion

#Plugin #8 - Gundo
git clone http://github.com/sjl/gundo.vim.git ~/.vim/bundle/gundo

#Plugin #9 - Fugitive
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-fugitive.git
#vim -s NONE -c "helptags vim-fugitive/doc" -c q
