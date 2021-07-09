if [ -f $HOME/.kshrc -a -r $HOME/.kshrc ]; then
	ENV=$HOME/.kshrc
	export ENV
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi
