# aliases
alias cd..="cd .."
alias l="ls -al --color=auto"
alias ll="ls -al --color=auto"
alias lp="ls -p"
alias h="history"
alias back="cd $OLDPWD"
alias grep="grep --color=auto"

# the "kp" alias, in honor of tony p.
alias kp="ps auxwww"

# This is GOLD for finding out what is taking so much space on my drives.
alias diskspace="du -S | sort -n -r | less"

# enviroment variable
# PS1 - Default interaction prompt
export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "

# PS2 - Continuation interactive prompt
export PS2="| => "

# functions
psgrep() {
	if [ ! -z $1 ] ; then
		echo "Grepping for processes matching $1..."
		ps aux | grep $1 | grep -v grep
	else
		echo "Need name to grep for"
	fi
}
