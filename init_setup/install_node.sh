brew install nodebrew
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.bash_profile
source ~/.bash_profile
nodebrew setup
nodebrew install 12.16.1
nodebrew use 12.16.1
