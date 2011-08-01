# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
PS1_VCPROMPT='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $(vcprompt)\$\[\033[00m\] '
PS1_NOVCPROMPT='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

export EDITOR="/usr/bin/vim"
export PS1=$PS1_VCPROMPT
export WINEDEBUG=-all
export XAUTHORITY="/home/leho/.Xauthority"

# SSH keychain
[ ! -n SUDO_USER ] && eval `keychain --eval --quiet identity`

alias ps1-vcprompt='PS1=$PS1_VCPROMPT; export PS1'
alias ps1-novcprompt='PS1=$PS1_NOVCPROMPT; export PS1'

# If you use non-login shells you still need to
[ -f /etc/profile.d/bash-completion.sh ] && source /etc/profile.d/bash-completion.sh
