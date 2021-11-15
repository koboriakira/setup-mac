echo "install_python: start" \
&& curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh \
&& cargo install cargo-edit \
&& echo "install_python: end" \
