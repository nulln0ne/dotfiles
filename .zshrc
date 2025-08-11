export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="fishy"

export GOPATH="$HOME/go"

export PATH="$GOPATH/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#586e75,bold'

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
alias ls='eza'
alias ll='eza -l'
alias la='eza -la'
alias l='eza -l --git'
alias lt='eza -T'
alias lT='eza -TL 2'
alias ld='eza -ld */'
alias l1='eza -1'
alias lsnew='eza -l --sort=newest'
alias lssize='eza -l --sort=size'
alias ltime='eza -l --sort=modified'
alias lext='eza -l --sort=extension' 


eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
