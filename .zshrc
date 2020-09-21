# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.

export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="spaceship"

plugins=(rails ruby git docker zsh-autosuggestions zsh-syntax-highlighting zsh-nvm)

source $ZSH/oh-my-zsh.sh
source ~/.bash_profile

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=180'

export PATH="$PATH:$HOME/.rvm/bin"

function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code - Insiders"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code - Insiders" "$argPath"
    fi
}

alias cop_changed="git diff-tree -r --no-commit-id --name-only head origin/master | xargs rubocop"

export PATH=/usr/local/share/npm/bin:$PATH
export PATH="$HOME/.npm-packages/bin:$PATH"


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
autoload -U promptinit; promptinit
prompt spaceship

