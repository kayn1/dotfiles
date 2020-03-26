
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source /home/daniel/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh







export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"






[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

