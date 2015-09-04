# .bashrc
function parse_git_branch {
ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
echo "("${ref#refs/heads/}")"
}

#if [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#fi
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
function prompt {
local BLACK="\[\033[0;30m\]"
local BLACKBOLD="\[\033[1;30m\]"
local RED="\[\033[0;31m\]"
local REDBOLD="\[\033[1;31m\]"
local GREEN="\[\033[0;32m\]"
local GREENBOLD="\[\033[1;32m\]"
local YELLOW="\[\033[0;33m\]"
local YELLOWBOLD="\[\033[1;33m\]"
local BLUE="\[\033[0;34m\]"
local BLUEBOLD="\[\033[1;34m\]"
local PURPLE="\[\033[0;35m\]"
local PURPLEBOLD="\[\033[1;35m\]"
local CYAN="\[\033[0;36m\]"
local CYANBOLD="\[\033[1;36m\]"
local WHITE="\[\033[0;37m\]"
local WHITEBOLD="\[\033[1;37m\]"
#export PS1="\n$BLACKBOLD[\t]$GREENBOLD \u@\h\[\033[00m\]:$BLUEBOLD\w\[\033[00m\] \\$ "
#export PS1="$WHITE\u $RED\$(date +%m/%d-%H:%M) $PURPLEBOLD\w $CYANBOLD\\n\W $YELLOW\$(parse_git_branch)$WHITE\$ "
#export PS1="$BLUE[$WHITE\u$BLUE] $CYAN$(date +%m/%d-%H:%M) $RED\w $CYANBOLD\\n\W $YELLOW$(parse_git_branch)$WHITE\$ "
#export PS1="$BLUE[$WHITE\u$BLUE] $CYAN\$(date +%m/%d-%H:%M) $RED\w $CYANBOLD\\n\W $YELLOW$(__git_ps1 " (%s)")$WHITE\$ "
#export PS1='$BLUE[$WHITE\u$BLUE] $CYAN$(date +%m/%d-%H:%M) $RED\w $CYANBOLD\n\W $YELLOW$(__git_ps1 )$WHITE\$ '
}
#prompt
export PS1='\[\033[0;34m\][\[\033[0;37m\]\u\[\033[1;33m\]@\[\033[1;31m\]db1\[\033[0;34m\]] \[\033[0;36m\]$(date +%m/%d-%H:%M) \[\033[0;31m\]\w \[\033[1;36m\]\n\W \[\033[0;33m\]$(__git_ps1 "(%s)")\[\033[0;37m\]\$ '
#NAME_USER=`parse_user`
#export PS1='\[\033[0;34m\][\[\033[0;37m\]$NAME_USER\[\033[0;34m\]] \[\033[0;36m\]$(date +%m/%d-%H:%M) \[\033[0;31m\]\w \[\033[1;36m\]\n\W \[\033[0;33m\]$(__git_ps1 "(%s)")\[\033[0;37m\]\$ '

#RED="\[\033[0;31m\]"
#YELLOW="\[\033[0;33m\]"
#GREEN="\[\033[0;32m\]"
#GREY="\[\033[1;30m\]"


#PS1="$GREEN\u $RED\$(date +%H:%M) \w$YELLOW \$(parse_git_branch)$GREEN\$ "
#PS1="$RED\$(date +%H:%M) \w$YELLOW \$(parse_git_branch)$GREEN\$ "
#PS1="$RED\$(date +%H:%M) \W$YELLOW \$(parse_git_branch)$GREEN\$ "
#PS1="$RED\$(date +%H:%M) $GREEN\w $DEFAU\\n(\$SHLVL:\\!)\\\$(parse_git_branch)$GREEN\$ "
#PS1="$GREY\u $RED\$(date +%m/%d-%H:%M) $GREEN\w $GREY\\n\W $YELLOW\$(parse_git_branch)$GREEN\$ "

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export TERM="xterm-256color"
#alias tmux="tmux -2"
# User specific aliases and functions
alias MMM='cd $HOME/devArea/BSP/mongoose/Mngse_PRJ/working_build'
alias GGG4='cd $HOME/devArea/BSP/dell/14g'
alias GGG3='cd $HOME/devArea/BSP/dell/13g'
alias GGG1='cd $HOME/devArea/BSP/dell/11g'
alias EEE='cd apps/ipmi/core && vim cdf/prdd/PMBus.c'
alias PPP='vim cdf/prdd/PMBus.c'
alias TAGS='ctags -R --exclude=.git && cscope -Rbkq'
alias UTAGS='rm cscope* tags'
alias ls='ls --color'
alias TTT='tmux attach -t 0'
alias TTTT='tmux attach -t '
#alias TTTN='tmux new -t i2c_drv'
alias TTTN='tmux new -s i2c_drv'
alias MBIN='wget https://hsv-svn-dell-mirror.emrsn.org/repo -O ~/bin/repo --no-check-certificate && chmod 755 ~/bin/repo'
#alias MBIN_2='~/bin/repo init -u https://hsv-svn-dell-mirror.emrsn.org/git/dellsrc/manifest -b rel/idrac8/master -m avct.xml'
alias MBIN_21='~/bin/repo init -u https://hsv-svn-dell-mirror.emrsn.org/git/dellsrc/manifest -b rel/idrac8/wave1/master -m avct.xml'
alias MBIN_22='~/bin/repo init -u https://hsv-svn-dell-mirror.emrsn.org/git/dellsrc/manifest -b rel/idrac8/wave2/master -m avct.xml'
alias MBIN_23='~/bin/repo init -u https://hsv-svn-dell-mirror.emrsn.org/git/dellsrc/manifest -b rel/idrac8/wave3/master -m avct.xml'
alias MBIN_2='~/bin/repo init -u https://hsv-svn-dell-mirror.emrsn.org/git/dellsrc/manifest -b rel/idrac8/master -m avct.xml'
alias MBIN_3='~/bin/repo sync --no-clone-bundle'
alias MBIN_4='sed -i 's/{arch}/{pkg_arch}/g' scripts/setup/audit-yocto.sh'
alias MBIN_5='source scripts/shell-setup && yocto build-all'
alias MBIN_NA='nice -n 99 ~/bin/repo sync --no-clone-bundle && source scripts/shell-setup && nice -n 99 yocto build-all'

export VIMRUNTIME=$HOME/bin/bin.vim.64bit/share/vim/vim74
#PATH=$HOME/bin:$HOME/bin/bin:$HOME/bin/bin.vim.64bit/bin:/usr/sbin:$PATH:/home/coverity/cov-sa-linux-5.4.0/bin
PATH=$HOME/bin:$HOME/bin/bin.vim.64bit/bin:/usr/sbin:$PATH

export SVN_EDITOR=vim
