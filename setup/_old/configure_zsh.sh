#!/bin/zsh

# zshの設定ファイルをコピー
echo 'configure_zsh: start!' \
&& cp -f ~/git/setting/zsh/.zshrc ~/.zshrc \
&& echo 'configure_zsh: success!'
