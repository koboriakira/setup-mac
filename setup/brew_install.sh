#!/bin/zsh
echo 'brew_install: success!' \
&& brew install tree \
&& brew install iproute2mac \
&& brew install gnu-sed \
&& brew install git \
&& brew install coreutils \
&& brew install pstree \
&& brew install gawk \
&& echo 'brew_install: success!'
