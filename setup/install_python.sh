echo "install_python: start" \
&& brew install pyenv \
&& echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshenv \
&& echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zprofile \
&& source ~/.zshenv \
&& source ~/.zprofile \
&& eval "$(pyenv init -)" \
&& pyenv install 3.8.2 \
&& pyenv rehash \
&& pyenv global 3.8.2 \
&& echo "install_python: success"
