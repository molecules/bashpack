#!/bin/bash

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


#----------------------------------------
#
#  .bashrc
#
alias resource='source /home/cbottoms/.bashrc'
alias reedit='vim /home/cbottoms/.bashrc'
alias resetup='chmod u+x /home/cbottoms/bashpack/resetup.bsh; /home/cbottoms/bashpack/resetup.bsh'

#----------------------------------------
#
#   distribution maintenance
#
alias ga='/home/cbottoms/workspace/Perl5/my_scripts/git_commit_all.bsh'
alias cv='/home/cbottoms/workspace/Perl5/my_scripts/coverage.bsh'
#export AUTHOR_TESTING=1

#----------------------------------------
#
#  misc
#
alias mysed='/home/cbottoms/workspace/Perl5/my_scripts/mysed.pl'

#----------------------------------------
#
#  Vim
#
alias vim='vim -p'
alias vimrc='vim /home/cbottoms/.vimrc'

#----------------------------------------
#
#  cpanminus
#
alias cerr='vim /home/cbottoms/.cpanm/build.log'

alias bashpack='zip -r bashpack.zip .vim .vimrc /home/cbottoms/workspace/Perl5/my_scripts/'

#----------------------------------------
#Print out usage history of 10 most used commands (see history command)
history | awk {'print $2'} | sort | uniq -c | sort -k1 -rn | head -n 10
