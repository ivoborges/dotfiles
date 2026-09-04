#
# ~/.bashrc
#

PS1='\[\e[38;5;208;1m\]\u\[\e[39m\] \w  \[\e[0m\]'

HISTCONTROL=ignoredups
HISTSIZE=100
HISTFILESIZE=2000

alias q='exit'
alias c='clear'
alias rm='rm -i'
alias ls='ls -la'
alias yz='ghostty -e yazi >/dev/null 2>&1 & disown'

alias trpt='trans en:pt-PT'
alias tren='trans pt-PT:en'

export PATH=/home/ivo/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
export PATH="$HOME/.cargo/bin:$PATH"
. "$HOME/.cargo/env"
