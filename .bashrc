# .bash_profile

# Source global definitions
if [ -f /etc/bashrc ]; then
		. /etc/bashrc
fi


PS1="\[$(tput bold)\](\t)[\[$(tput setaf 6)\]\u@\h\[$(tput setaf 2)\] \w]>\[$(tput sgr0)\]"

# Source the git bash completion file
if [ -f /etc/bash_completion.d/git ]; then
    source /etc/bash_completion.d/git
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1
    PS1='\[$(tput bold)\](\t)[\[\e[1;32m\]\u@\[\[\e[1;32m\]\h\e[0m\]\[$(tput bold)\]]\e[0m\]\[\e[1;34m\]\[$(__git_ps1)\e[0m\] [\w]: '
fi

export PS1

#Make git log awesome
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
