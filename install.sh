#!/bin/sh
if [ -f ~/.vimrc  -a ! -f ~/.vimrc.bak ];then
    mv ~/.vimrc ~/.vimrc.bak
fi
which ctags
if [ $? -ne 0 ];then
    sudo apt update
    sudo apt -y install ctags
fi
which git
if [ $? -ne 0 ];then
   sudo apt -y install git
fi
which ag
if [ $? -ne 0 ];then
   sudo apt -y install silversearcher-ag
fi
if [ ! -d ~/.vim/bundle/Vundle.vim ];then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
if [ ! -d ~/.fzf ];then
   git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
   ~/.fzf/install
fi

cat .vimrc > ~/.vimrc
vim +PluginInstall +qall



