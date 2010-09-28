#!/bin/bash

# Source global definitions
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# Set the editor to vim
if [ -f /usr/bin/vim ]; then
    export EDITOR='/usr/bin/vim'
fi

#----------------------------------------
#
#  .bashrc
#
alias resource='source ~/.bashrc'
alias reedit='vim ~/.bashrc ~/.bashrc_local; source ~/.bashrc'
alias resetup='chmod u+x ~/bashpack/resetup.bsh; ~/bashpack/resetup.bsh'
alias cdb='cd ~/bashpack'

#----------------------------------------
#
#   distribution maintenance
#
alias ga='~/bashpack/git_commit_all.bsh'
alias cv='~/bashpack/coverage.bsh'
#export AUTHOR_TESTING=1


#----------------------------------------
#
#  ls variants
#
alias lsp='~/bashpack/shell.dir/lsp.bsh'
alias lsa='~/bashpack/shell.dir/lsa.bsh'

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

#----------------------------------------
#Print out usage history of 10 most used commands (see history command)
history | awk {'print $2'} | sort | uniq -c | sort -k1 -rn | head -n 10

# Source local definitions last. Besides being local, sourcing this last overrides anything in the normal .bashrc
if [ -f ~/.bashrc_local ]; then
    source ~/.bashrc_local
fi
