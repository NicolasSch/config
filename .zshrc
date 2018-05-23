plugins=(rails ruby git capistrano bundler heroku rake command-not-found history-substring-search zsh-syntax-highlighting)

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/sbin/:$PATH"
eval "$(rbenv init -)"

# Path to your oh-my-zsh installation.
export ZSH=/Users/nicolasschwartau/.oh-my-zsh

# User configuration
DEFAULT_USER=leemour

source $ZSH/oh-my-zsh.sh

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

export SPACESHIP_RUBY_SHOW=false
export SPACESHIP_PROMPT_SEPARATE_LINE=false
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export SPACESHIP_GIT_BRANCH_COLOR=blue
