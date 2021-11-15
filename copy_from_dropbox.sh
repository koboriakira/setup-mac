#!/bin/zsh
echo "copy_from_dropbox: start"

# 必要なファイルをコピーする
DROPBOX_SETUP_DIR=${HOME}/Dropbox/20_Setup
cp -fR ${DROPBOX_SETUP_DIR}/Pictures ~/Pictures
cp -fR ${DROPBOX_SETUP_DIR}/.ssh ~/.ssh

# パーミッションを変更
chmod 700 ~/.ssh && chmod 600 ~/.ssh/*

echo "copy_from_dropbox: success"
