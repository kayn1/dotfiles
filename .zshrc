# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/daniel/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(rails ruby git docker zsh-autosuggestions zsh-completions z)

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit

export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

source $ZSH/oh-my-zsh.sh

. ~/z.sh

export EDITOR=/opt/homebrew/bin/vim

. $HOME/.asdf/asdf.sh
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"

export GOPATH=/Users/daniel/go
export PATH="$HOME/go/bin:$PATH"

alias go=richgo

source <(kubectl completion zsh)

export PATH="/Users/daniel/.local/bin:$PATH"
