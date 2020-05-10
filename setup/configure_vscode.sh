#!/bin/zsh
# VSCodeの設定を同期
echo 'configure_vscode: start!' \
&& ln -nfs ~/git/setting/VSCode/User ~/Library/Application\ Support/Code/User \
&& echo 'configure_vscode: success!'
