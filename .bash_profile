# .bash_profile

# get aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

function parse_git_branch () 
{
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:\1/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u$NO_COLOUR:\W$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
#PS1="$GREEN\u@$HOSTNAME$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
fi

alias vi='vim'
alias la='ls -Alh'
alias l='ls -CF'
alias rm='rm -i'
alias mv='mv -i'
alias courses='cd ~/ownCloud/School/15th\ Univ\ \(2015-2016\)/수업/1학기/'
alias courses-sp='cd ~/ownCloud/School/15th\ Univ\ \(2015-2016\)/수업/1학기/시스템\ 프로그래밍/'
alias courses-pl='cd ~/ownCloud/Coding/Racket\:OcamlProgramming/ProgrammingLanguage'
alias courses-swpp='cd ~/ownCloud/Coding/RubyProgramming/SWPP'
alias coding='cd ~/ownCloud/Coding'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LS_OPTIONS='--color=auto'
export GREP_OPTIONS='--line-number --color=auto --binary-files=without-match'
export GREP_COLOR='1;32'
#export PATH=$PATH:/usr/local/bin:.

# applies only for my mac:
export PATH=/Users/wonwook-mac/android-sdk-macosx/platform-tools:/Users/wonwook-mac/android-sdk-macosx/tools:$PATH
