#!/bin/zsh
echo 'brew_install: success!' \
&& brew install tree \
&& brew install iproute2mac \
&& echo 'brew_install: success!' \
&& brew install gnu-sed \
&& brew install git
