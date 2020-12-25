autoload colors
colors

# set
set -C

zsh ~/.git-prompt.sh
eval "$(pyenv init -)"
eval "$(starship init zsh)"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# aliases
alias rm="rm -i"
alias cd..="cd .."
alias l="ls -al"
alias ll="ls -al"
alias lp="ls -p"
alias h="history"
alias back="cd $OLDPWD"
alias grep="grep --color=auto"
alias chrome="chrome-cli"

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

# git関連のファンクション
ghcr() {
    gh repo create $1
    git init
    git remote add origin git@github.com:koboriakira/$1.git
    cp ~/.git/hooks/pre-commit .git/hook/pre-commit
    git status -s
}

openissue() {
    issuetitle=$1
    issuebody="Write later"
    if [ $# -ge 2 ]; then
        issuetitle=$2
    fi
    if [ $# -ge 3 ]; then
        issuebody=$3
    fi
    echo $issuetitle
    echo $issuebody
    issuenumber=`gh issue create --title "$issuetitle" --body "$issuebody" | tail -1 | cut -d / -f7`
    branchname=`echo $1 | tr A-Z a-z | sed -e 's/ /-/g'`
    git co -b "$branchname#$issuenumber"

}

pullrequest() {
    branch=`git branch --show-current`
    issuenumber=`echo $branch | cut -d# -f2`
    url=`gh pr create --title "$1" --body "Close #$issuenumber"`
    chrome-cli open $url
}

closebranch() {
    currentbranch=`git branch --show-current`
    git co master
    git pull origin master
    git push --delete origin $currentbranch
    git branch -d $currentbranch
}
