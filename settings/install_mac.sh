#!/bin/bash

path=`pwd`

if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile.bkp
fi
ln -s $path"/bash_profile" ~/.bash_profile


if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc.bkp
fi
ln -s $path"/bashrc" ~/.bashrc


if [ -f ~/.aliasrc ]; then
    mv ~/.aliasrc ~/.aliasrc.bkp
fi
ln -s $path"/aliasrc" ~/.aliasrc


if [ -f ~/.tmux.conf ]; then
    mv ~/.tmux.conf ~/.tmux.conf.bkp
fi
ln -s $path"/tmux/tmux.conf" ~/.tmux.conf


if [ -f ~/.git-completion.bash ]; then
    mv ~/.git-completion.bash ~/.git-completion.bash.bkp
fi
ln -s $path"/git-completion.bash" ~/.git-completion.bash

echo "Init System Over!!!"
