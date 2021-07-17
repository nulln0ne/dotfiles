alias rm="rm -rvf"
alias cp="cp -rv"
alias mkdir="mkdir -pv"
alias g="git"
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
alias gotop="gotop --statusbar --color solarized"

export PS1="\u@\h \w> "
