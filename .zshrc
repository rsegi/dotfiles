# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

eval "$(starship init zsh)"

eval "$(fnm env --use-on-cd)"
eval $(thefuck --alias)
eval "$(zoxide init zsh)"

function de(){
    trash "$1"
}

function der(){
    trash restore "$1"
}

function del(){
    trash list
}

function gcm(){
    git commit -m "$1"
}

function gbranch(){
    git checkout -b "$1" "$2"
}

alias idea="idea.sh"
alias ll="exa -l --icons --git"
alias lla="exa -la --icons --git"
alias ga="git add"
alias gf="git fetch"
alias gpull="git pull"
alias gpush="git push"
alias gst="git status"
alias zshrc="nvim ~/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall


export PATH="$HOME/idea-IU/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
