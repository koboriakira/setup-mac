#!/bin/zsh
# VSCodeの設定を同期
echo 'configure_vscode: start!' \
&& ln -nfs ~/git/setting/VSCode/User/settings.json ~/Library/Application\ Support/Code/User/settings.json \
&& ln -nfs ~/git/setting/VSCode/User/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json \
&& ln -nfs ~/git/setting/VSCode/User/markdown-style.css ~/Library/Application\ Support/Code/User/markdown-style.css \
&& echo 'configure_vscode: success!'
