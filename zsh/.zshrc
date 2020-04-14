autoload colors
colors

zsh ~/.git-prompt.sh
eval "$(pyenv init -)"

# aliases
alias rm="rm -i"
alias cd..="cd .."
alias l="ls -al"
alias ll="ls -al"
alias lp="ls -p"
alias h="history"
alias back="cd $OLDPWD"
alias grep="grep --color=auto"

# the "kp" alias, in honor of tony p.
alias kp="ps auxwww"

# This is GOLD for finding out what is taking so much space on my drives.
alias diskspace="du -S | sort -n -r | less"

# git prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
GIT_PROMPT='${vcs_info_msg_0_}'

# prompt
PROMPT=%{${fg[green]}%}"________________________________________________________________________________"$'\n'"|%{${fg[cyan]}%} %~ %{${reset_color}%}%n@%m"$GIT_PROMPT$'\n'%{${fg[green]}%}"%(!.#.| =>) %{${reset_color}%}"
PROMPT2="%{${fg[blue]}%}%_ => %{${reset_color}%}"
SPROMPT="%{${fg[red]}%}correct: %R -> %r [nyae]? %{$reset_color}%}"
RPROMPT=""
# RPROMPT="%{${fg[cyan]}%}[%~]%{${reset_color}%}"
export LS_COLORS

# functions
psgrep() {
	if [ ! -z $1 ] ; then
		echo "Grepping for processes matching $1..."
		ps aux | grep $1 | grep -v grep
	else
		echo "Need name to grep for"
	fi
}
