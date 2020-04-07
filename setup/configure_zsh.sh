#!/bin/zsh

# zshの設定ファイルを同期
echo 'configure_zsh: start!' \
&& ln -nfs ~/git/setting/zsh/.zprofile ~/.zprofile \
&& ln -nfs ~/git/setting/zsh/.zshrc ~/.zshrc \
&& echo 'configure_zsh: success!'
