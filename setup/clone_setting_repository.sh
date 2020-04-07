#!/bin/zsh
echo "clone_setting_repository: start" \
&& mkdir ~/git \
&& git clone git@github.com:koboriakira/setting.git ~/git/setting \
&& echo "clone_setting_repository: success"
