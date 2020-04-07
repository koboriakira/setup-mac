if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# Add secure enviroment variables
. ~/.bashsecure
