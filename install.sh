#!/bin/bash
echo "install: start"

# brewのインストール
if type "brew" > /dev/null 2>&1; then
  : # do nothing
else
  echo "ERROR!!! brewがインストールされていません"
  exit 1
fi

# フォントをインストール
curl -fsSL https://raw.githubusercontent.com/koboriakira/setup-mac/master/setup/fonts.sh | bash -s

# アプリをインストール
curl -fsSL https://raw.githubusercontent.com/koboriakira/setup-mac/master/setup/mac_brew_install.sh | bash -s
curl -fsSL https://raw.githubusercontent.com/koboriakira/setup-mac/master/setup/mac_brew_cask_install.sh | bash -s
curl -fsSL https://raw.githubusercontent.com/koboriakira/setup-mac/master/setup/mas_install.sh | bash -s

echo "install: success!!"
echo "INFO: 再起動してください。"
