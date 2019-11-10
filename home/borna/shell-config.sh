
# Prevent other users from writing to my terminal
tty -s && mesg -v n

# Prevent myself from accidentally pressing Ctrl-D
if [ ! -z $BASH ]; then # bash
    export IGNOREEOF=3
elif [ ! -z $ZSH_NAME ]; then # zsh
    setopt ignoreeof
fi

# Aliases
alias py=python

if which conda &>/dev/null; then
    alias ca="conda activate" 
fi

