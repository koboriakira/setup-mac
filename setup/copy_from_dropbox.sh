#!/bin/zsh

# 退避させたファイル、秘密鍵、Credentials系を同期

echo "copy_from_dropbox: start" \
&& cp -fR ~/Dropbox/Pictures/* ~/Pictures \
&& cp -fR ~/Dropbox/Documents/* ~/Documents \
&& cp -fR ~/Dropbox/.ssh/* ~/.ssh/ \
&& chmod 700 ~/.ssh \
&& chmod 600 ~/.ssh/* \
&& cp -f ~/Dropbox/.zshrc ~/.zshrc \
&& cp -f ~/Dropbox/.zshenv ~/.zshenv \
&& cp -R ~/Dropbox/.aws ~/.aws \
&& echo "copy_from_dropbox: success"

# ~/Musicもコピーする必要あればやる
# ~/Dropbox/.awsも同様
