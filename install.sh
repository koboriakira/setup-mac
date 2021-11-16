#!/bin/bash
echo "install: start"

# brewのインストール
if type "brew" > /dev/null 2>&1; then
  : # do nothing
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  if test -e /etc/os-release ; then
    # Linuxのときはlinuxbrewのevalを設定
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $DOTPATH/.zsh/.zsh__temporary.zsh
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  else
    # Macのときは、brewの基本設定としてman8に書き込み権限を付与
    chown -R $(whoami) /usr/local/share/man/man1 && chmod u+w /usr/local/share/man/man1
    echo $(tput setaf 2)Install brew: complete!. ✔︎$(tput sgr0)
  fi
fi

# フォントをインストール
curl -fsSL https://raw.githubusercontent.com/koboriakira/setup-mac/master/setup/fonts.sh | bash -s

# アプリをインストール
curl -fsSL https://raw.githubusercontent.com/koboriakira/setup-mac/master/setup/mac_brew_install.sh | bash -s
curl -fsSL https://raw.githubusercontent.com/koboriakira/setup-mac/master/setup/mac_brew_cask_install.sh | bash -s
curl -fsSL https://raw.githubusercontent.com/koboriakira/setup-mac/master/setup/mas_install.sh | bash -s

echo "install: success!!"
echo "INFO: 再起動してください。"
