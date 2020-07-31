#!/bin/zsh
echo 'brew_install: success!' \
&& brew install tree \
&& brew install iproute2mac \
&& brew install gnu-sed \
&& brew install git \
&& brew install coreutils \
&& brew install pstree \
&& brew install gawk \
# vimの補完プラグインneocompleteを使うために必要な言語luaをインストール
&& brew install lua \
# vimの再インストール
&& brew install vim --with-lua --with-python3 \
&& echo 'brew_install: success!'
