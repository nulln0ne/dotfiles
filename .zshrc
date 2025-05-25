export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="fishy"
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
eval "$(zoxide init zsh)"
alias cd='z'

# Added by Windsurf - Next
export PATH="/Users/hinko/.codeium/windsurf/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

alias ls="ls --color=always"
