alias rm="rm -rf"
alias cp="cp -r"
alias mkdir="mkdir -pv"
alias g="git"
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

export PS1="\u@\h \w> "
