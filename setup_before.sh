#!/bin/zsh

# dotfile系は、差分比較を先にしておく
# ピクチャ、書類、ミュージックはある程度整理しておく
echo "setup_before"
&& cp ~/.zshrc ~/Dropbox/.zshrc \
&& cp ~/.zshenv ~/Dropbox/.zshenv \
&& cp ~/.ssh ~/Dropbox/.ssh \
&& cp ~/.aws ~/Dropbox/.aws \
&& cp -R ~/Pictures/kobori_icon ~/Dropbox/Pictures \
&& cp -R ~/Pictures/Wallpapers ~/Dropbox/Pictures \
#&& cp -R ~/Documents ~/Dropbox \
&& cp -R ~/Music/Ableton ~/Dropbox/Ableton
