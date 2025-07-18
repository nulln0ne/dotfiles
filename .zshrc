ZSH_THEME="agnoster" # set by `omz`

export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="fishy"

export GOPATH="$HOME/go"

export PATH="$GOPATH/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/Users/hinko/.bun/bin:$PATH"

plugins=(
  git
  extract
  docker
  docker-compose
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source "$ZSH/oh-my-zsh.sh"

alias cd="z"
alias ls="ls --color=always"

eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
