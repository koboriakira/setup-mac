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
bash setup/fonts.sh

# アプリをインストール
bash setup/mac_brew_install.sh
bash setup/mac_brew_cask_install.sh
bash setup/mas_install.sh

echo "install: success!!"
echo "INFO: 再起動してください。"
