#!/bin/bash

pathmunge () {
        if ! echo $PATH | /bin/egrep -q "(^|:)$1($|:)" ; then
           if [ "$2" = "after" ] ; then
              PATH=$PATH:$1
           else
              PATH=$1:$PATH
           fi
        fi
}

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
alias reedit='vim ~/.bashrc*; source ~/.bashrc'
alias resetup='chmod u+x ~/bashpack/resetup.bsh; ~/bashpack/resetup.bsh'
alias cdb='cd ~/bashpack'

#----------------------------------------
#
#   distribution maintenance
#
alias ga='~/bashpack/git_commit_all.bsh'
alias gback='git stash save --keep-index; git stash drop;'
alias cv='~/bashpack/coverage.bsh'
alias current='./.current_files'
#export AUTHOR_TESTING=1


#----------------------------------------
#
#  ls variants
#
alias lsp='~/bashpack/shell.dir/lsp.bsh'
alias lsa='~/bashpack/shell.dir/lsa.bsh'
alias ll='ls -hal | more'

#----------------------------------------
#
#  misc
#
alias mysed='~/bashpack/mysed.pl'
alias duh='du -h --max-depth=1 .'
alias duhm='du -h --max-depth=1 . | grep -eM -eG'

#----------------------------------------
#
#  Vim
#
alias vim='vim -p'

#----------------------------------------
#
#   Perl
alias cdp='cd ~/workspace/Perl5'
alias cdw='cd ~/workspace'


#----------------------------------------
#
#   Perl6
alias cdr='cd ~/workspace/Rakudo'
alias new6='~/bashpack/shell.dir/new6'

#----------------------------------------
#Print out usage history of 10 most used commands (see history command)
history | awk {'print $2'} | sort | uniq -c | sort -k1 -rn | head -n 10

# Source local definitions last. Besides being local, sourcing this last overrides anything in the normal .bashrc
if [ -f ~/.bashrc_local ]; then
    source ~/.bashrc_local
fi

