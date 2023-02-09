#!/bin/zsh

echo "synchronizing settings (remote to local)"

cp .zshrc-wsl $HOME/.zshrc
cp .tmux.conf.local $HOME/.tmux.conf.local
cp .alacritty.yml $HOME/.alacritty.yml
sudo cp wsl.conf /etc/wsl.conf

echo "done!"