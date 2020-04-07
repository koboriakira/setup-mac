brew install pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
eval "$(pyenv init -)"
source ~/.bashrc
pyenv install 3.8.2
pyenv rehash
pyenv global 3.8.2
