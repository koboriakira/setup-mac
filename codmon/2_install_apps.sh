# アプリをインストール
echo 'brew_install: start!' \
&& brew install git \
&& brew install chrome-cli \
&& brew install graphviz \
&& brew install plantuml \
&& brew install docker \
&& brew install coreutils \
&& brew install diffutils \
&& brew install ed \
&& brew install findutils \
&& brew install gawk \
&& brew install gnu-sed \
&& brew install gnu-tar \
&& brew install grep \
&& brew install gzip \
&& brew install tree \
&& brew install pstree \
&& brew install iproute2mac \
&& brew install ag \
&& brew install jq \
&& brew install lv \
&& brew install parallel \
&& brew install pandoc \
&& brew install sift \
&& brew install wget \
&& brew install wdiff --with-gettext \
&& brew install xmlstarlet \
&& echo 'brew_install: success!' \

&& echo 'brew install --cask: start!' \
&& brew install --cask notion \
&& brew install --cask docker \
&& brew install --cask licecap \
&& brew install --cask alfred \
&& brew install --cask clipy \
&& brew install --cask rectangle \
&& brew install --cask karabiner-elements \
&& brew install --cask visual-studio-code \
&& brew install --cask google-japanese-ime \
&& echo 'brew install --cask: success!'
