#!/bin/bash

cp -u $HOME/suckless/dwm-6.2/config.h $HOME/run_commands/dwm/

cp -u $HOME/.bashrc $HOME/run_commands/bashrc
cp -u $HOME/.vimrc $HOME/run_commands/vimrc
cp -u $HOME/.pylintrc $HOME/run_commands/pylintrc
cp -u $HOME/.xinitrc $HOME/run_commands/xinitrc
cp -u $HOME/.condarc $HOME/run_commands/xinitrc
cp -ur $HOME/.config/kitty/ $HOME/run_commands/config/
cp -ur $HOME/.config/nnn/ $HOME/run_commands/config/
cp -ur $HOME/.config/nvim/ $HOME/run_commands/config/
cp -ur $HOME/.config/zathura/ $HOME/run_commands/config/
cp -ur $HOME/.config/nvim/coq-user-snippets $HOME/run_commands/config/
