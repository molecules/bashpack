#!/bin/bash

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/.bashrc_local

#----------------------------------------
#
#  .bashrc
#
alias resource='source ~/.bashrc'
alias reedit='vim ~/.bashrc ~/.bashrc_local'
alias resetup='chmod u+x ~/bashpack/resetup.bsh; ~/bashpack/resetup.bsh'

#----------------------------------------
#
#   distribution maintenance
#
alias ga='~/bashpack/git_commit_all.bsh'
alias cv='~/bashpack/coverage.bsh'
#export AUTHOR_TESTING=1

#----------------------------------------
#
#  misc
#
alias mysed='~/bashpack/mysed.pl'

#----------------------------------------
#
#  Vim
#
alias vim='vim -p'
alias vimrc='vim ~/.vimrc'

#----------------------------------------
#
#  cpanminus
#
alias cerr='vim ~/.cpanm/build.log'

alias bashpack='zip -r bashpack.zip .vim .vimrc ~/bashpack/'

#----------------------------------------
#Print out usage history of 10 most used commands (see history command)
history | awk {'print $2'} | sort | uniq -c | sort -k1 -rn | head -n 10
