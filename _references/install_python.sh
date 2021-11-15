echo "install_python: start" \
# pyenvのインストール、設定
&& brew install pyenv \
&& echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc \
&& echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc \
&& source ~/.zshenv \
&& source ~/.zshrc \
&& eval "$(pyenv init -)" \
&& pyenv install 3.9.0 \
&& pyenv rehash \
&& pyenv global 3.9.0 \
# pipenvのインストール
&& brew install pipenv \
# よく使うライブラリのインストール
&& pip install kaggle --upgrade \
&& echo "install_python: success"
