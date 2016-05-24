
# if not interactive, then do nothing
case $- in 
	*i*) ;;
	  *) return ;;
esac


# Try some coloration
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgre --color=auto'
alias egrep='egrep --color=auto'

# Some basic aliases
alias ll='ls -alF'
alias la='ls -A'

# Custom aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Add software heritage modules to the path
cd ~/documents/swh-environment/
source pythonpath.sh 
cd - >> /dev/null

# GPG

export DEBFULLNAME="Quentin Campos"
export DEBEMAIL="qcampos@etud.u-pem.fr"
export DEBSIGN_KEYID="983D8675"
