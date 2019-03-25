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
alias courses='cd ~/Seafile/School/19thGrad\(2019-2020\)/수업/1학기/'
alias coding='cd ~/Seafile/Coding'
alias dotfiles='cd ~/Seafile/Coding/dotfiles'
alias splab='cd ~/Seafile/Coding/SPLab'
alias nemo='cd ~/Seafile/Coding/SPLab/repositories/snunemo'
alias reef='cd ~/Seafile/Coding/SPLab/repositories/reef'
alias server='ssh wsong0512@wonook.iptime.org'
alias mulan='ssh snuspl.snu.ac.kr'
alias r730='ssh 147.46.215.147 -p 2222'
alias elsa='ssh 147.46.219.198 -p 7910'
alias build='killreef && mvn clean install -T 1C'
alias buildingmachine='ssh jenkins@147.46.247.143 -p 2222'
alias killreef="echo 'killing reef processes..' && jps | grep "Launcher" | cut -f1 -d ' ' | cut -f2 -d ':'  | xargs kill -9"
alias tennis="open http://athletics.snu.ac.kr/prg/tnsForm.php?schd_dt=$(date +'%Y/%m/%d')"
alias courtreservation="open http://athletics.snu.ac.kr/prg/snu_0306_inp.php?rqst_dt=$(date +'%Y/%m/%d')"
alias jira="open https://issues.apache.org/jira"
alias mulanproxy="sshuttle -r snuspl.snu.ac.kr 0/0"
alias hdfsfinder="open http://192.168.1.44:50070/explorer.html#/"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LS_OPTIONS='--color=auto'
export GREP_OPTIONS='--line-number --color=auto --binary-files=without-match'
export GREP_COLOR='1;32'
#export PATH=$PATH:/usr/local/bin:.

