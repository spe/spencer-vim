# .bashrc
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"

function parse_git_branch {
ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
echo "("${ref#refs/heads/}")"
#git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

os_string=`cat /proc/version | grep ubuntu`
if [ -n "os_string" ]; then
	if [ -f /etc/bash_completion.d/git-prompt ]; then
	    . /etc/bash_completion.d/git-prompt
	fi
fi
os_string=`cat /proc/version | grep "Red Hat"`
if [ -n "os_string" ]; then
	if [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

export GIT_PS1_SHOWDIRTYSTATE=1
#Prompt and prompt colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function prompt() {
    local RESET="\[\033[0m\]";
    local BLACK="\[\033[0;30m\]";
    local BLACKBOLD="\[\033[1;30m\]";
    local RED="\[\033[0;31m\]";
    local REDBOLD="\[\033[1;31m\]";
    local GREEN="\[\033[0;32m\]";
    local GREENBOLD="\[\033[1;32m\]";
    local YELLOW="\[\033[0;33m\]";
    local YELLOWBOLD="\[\033[1;33m\]";
    local BLUE="\[\033[0;34m\]";
    local BLUEBOLD="\[\033[1;34m\]";
    local PURPLE="\[\033[0;35m\]";
    local PURPLEBOLD="\[\033[1;35m\]";
    local CYAN="\[\033[0;36m\]";
    local CYANBOLD="\[\033[1;36m\]";
    local WHITE="\[\033[0;37m\]";
    local WHITEBOLD="\[\033[1;37m\]";
    if [[ "${USER}" == "root" ]]; then
        local usercolor="${RED}";
    else
        local usercolor="${GREENBOLD}";
    fi; 

    PS1="${BLUE}[${WHITE} \u"; #user
    PS1+="${YELLOWBOLD} @"; # @ 
    PS1+="${usercolor}\h"; # host name
    PS1+="${BLUE}] "; # space
    PS1+="${CYAN}$(date +%m/%d-%H:%M) "; # date + Time
    PS1+="${RED}\w "; #working directory
    PS1+="${CYANBOLD}\n\W "; #new line & current directory
    PS1+="${YELLOW}$(__git_ps1 "(%s)")"; # git prompt
    #PS1+="${WHITE}$ "; #dollar sign
    PS1+="${RESET}$ "; #dollar sign
    export PS1;
    PS2="${YELLOW}→ ${reset}";
    export PS2;
}
prompt

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export TERM="xterm-256color"

# User specific aliases and functions
alias TAGS='ctags -R --exclude=.git && cscope -Rbkq'
alias UTAGS='rm cscope* tags'
alias ls='ls --color'
alias TTT='tmux attach -t 0'
alias TTTT='tmux attach -t '

PATH=$HOME/bin:/usr/sbin:$PATH

export SVN_EDITOR=vim
