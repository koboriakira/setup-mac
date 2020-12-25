#!/bin/zsh
echo 'brew_install: start!' \
&& brew tap aws/tap \
&& brew install aws-sam-cli \
&& brew install tree \
&& brew install iproute2mac \
&& brew install gnu-sed \
&& brew install git \
&& brew install coreutils \
&& brew install pstree \
&& brew install gawk \
&& brew install github/gh/gh \
&& brew install starship \
&& brew install fish \
&& brew install chrome-cli \
&& brew install graphviz \
&& brew install plantuml \
&& brew install blackhole-16ch \
&& brew install mas \
&& echo 'brew_install: success!'
