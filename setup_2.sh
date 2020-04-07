#!/bin/zsh
# 再起動後、つぎの操作をしたあとに実行する
# 1. Dropboxとつないでファイルを同期する
# 2. VSCodeを実行して、~/Library/Application\ Support/Code/User/settings.json 内にファイルができることを確認

echo "==============================setup_2.sh: start==============================" \
&& source setup/copy_from_dropbox.sh \
&& source setup/clone_setting_repository.sh \
&& source setup/configure_zsh.sh \
&& source setup/configure_git.sh \
&& source setup/configure_vscode.sh \
&& source setup/install_python.sh \
&& source setup/install_node.sh \
&& source install_npm_modules.sh \
&& echo "==============================setup_2.sh: success==============================" \
&& echo "reboot!" \
&& sudo reboot
