#!/bin/zsh
# brewのインストール
echo "==============================setup_1.sh: start==============================" \
&& /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" \
&& source setup/brew_install.sh \
&& source setup/brewcask_install.sh \
&& echo "==============================setup_1.sh: success==============================" \
&& echo "reboot!" \
&& reboot
