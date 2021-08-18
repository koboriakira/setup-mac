#!/bin/zsh
echo "==============================setup.sh: start=============================="

# brewのインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# brewの基本設定としてman8に書き込み権限を付与
sudo chown -R $(whoami) /usr/local/share/man/man1
&& chmod u+w /usr/local/share/man/man1
