source ~/git-prompt.sh #https://github.com/lyze/posh-git-sh

export PROMPT_COMMAND='__posh_git_ps1 "\n\u@\h \[\e[0;33m\]\w" " \[\e[1;34m\]\n\$\[\e[0m\] ";'$PROMPT_COMMAND
export VISUAL=vim
export EDITOR="$VISUAL"
export LC_ALL="C.UTF-8" #either set LC_ALL or customise with LANG & LC_COLLATE
export LANG='C.UTF-8'
export GREP_COLOR='1;37;41'

set -o vi

alias tree='tree.com //a'
alias treef='tree.com //a //f'
alias ls='ls -a --classify --color --group-directories-first'
alias base='basename "$PWD"'
alias cpwd='PWD | clip'
alias search='find -name'
alias grep='grep --color=auto'