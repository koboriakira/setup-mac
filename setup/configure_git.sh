#!/bin/zsh

# gitの設定ファイルを同期
echo 'configure_git: start!' \
&& ln -nfs ~/git/setting/git/.git-prompt.sh ~/.git-prompt.sh \
&& ln -nfs ~/git/setting/git/.gitconfig ~/.gitconfig \
&& echo 'configure_git: success!'
