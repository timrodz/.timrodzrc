if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    zsh-autosuggestions
)

export LANG=en_US.UTF-8
export EDITOR='vim'
source $ZSH/oh-my-zsh.sh

# Custom bindings
# Ubuntu
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
bindkey "^[[1;4D" beginning-of-line
bindkey "^[[1;4C" end-of-line

# OS X
bindkey "^[1;3D" backward-word
bindkey "^[1;3C" forward-word
bindkey "^[[1;9D" beginning-of-line
bindkey "^[[1;9C" end-of-line

# Custom aliases
alias gs="git status"
alias gc="git checkout"
alias gap="git add -p"
alias gbd="git branch -D"
alias push="git push"
alias pull="git pull"
alias diff="git diff --cached"
alias pom="pull origin main"
alias pomr="pull origin main --rebase"
alias m="git checkout main"
alias src="cd '$HOME/src'"

squashall() {
    git reset --soft $(git merge-base main HEAD)
}

dockerstopall() {
    docker stop $(docker ps -a -q)
}

gpgauth() {
    export GPG_TTY=$(tty)
    echo "test" | gpg --clearsign
}

# This sets up colors properly
export TERM="xterm-256color"

# Perforce
# export PATH=$HOME/helix-core-server:$PATH
# export P4PORT=1666

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# This sets up colors properly
export TERM="xterm-256color"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Uncomment only if alacritty has been compiled (as opposed to downloaded and run as a normal app, i.e. via OSX)
# source $HOME/alacritty/extra/completions/alacritty.bash