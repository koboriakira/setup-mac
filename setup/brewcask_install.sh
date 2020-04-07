#!/bin/zsh
echo 'brewcask_install: start!' \
&& brew cask install google-chrome \
&& brew cask install spotify \
&& brew cask install 1password \
&& brew cask install 1password-cli \
&& brew cask install slack \
&& brew cask install visual-studio-code \
&& brew cask install ableton-live-suite \
&& brew cask install splice \
&& brew cask install evernote \
&& brew cask install android-file-transfer \
&& brew cask install --force mediahuman-audio-converter \
&& brew cask install --force sketch \
&& brew cask install google-japanese-ime \
&& brew cask install deepl \
&& brew cask install notion \
&& echo 'brewcask_install: success!'
# 手動で入れるアプリケーション
# recordbox
# soundflower
# vlc
