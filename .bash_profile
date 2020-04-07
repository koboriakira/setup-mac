if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.env ]; then
	. ~/.env
fi

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"
