echo "install_node: start" \
&& brew install nodebrew \
&& echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zshrc \
&& source ~/.zshrc \
&& nodebrew setup \
&& nodebrew install 12.16.1 \
&& nodebrew use 12.16.1 \
&& echo "install_node: success"
