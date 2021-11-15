#!/bin/zsh
echo "clone_setting_repository: start" \
&& mkdir ~/git \
&& git clone git@github.com:koboriakira/setting.git ~/git/setting \
&& git clone git@github.com:koboriakira/Diary2020.git ~/git/diary \
&& cd ~/ \
&& echo "clone_setting_repository: success"
