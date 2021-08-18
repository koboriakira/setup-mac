#!/bin/zsh
brew  install java \
# javaは/usr/local/opt内に配置されるので、これを通常インストールしたときに配置されるディレクトリにも
# シンボリックでコピーする
&& sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk \
# JAVA_HOMEのパスを通しておく
&& echo "export JAVA_HOME=`/usr/libexec/java_home -v 16.0.1`" >> ~/.zshrc
