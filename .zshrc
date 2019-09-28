# 
#  __________             .___            .__    /\         
#  \______   \_____     __| _/____   ____ |  |   )/   ______
#   |     ___/\__  \   / __ |/  _ \_/ __ \|  |       /  ___/
#   |    |     / __ \_/ /_/ (  <_> )  ___/|  |__     \___ \ 
#   |____|    (____  /\____ |\____/ \___  >____/    /____  >
#                  \/      \/           \/               \/ 
#                 .__                                       
#  ________  _____|  |_________   ____                      
#  \___   / /  ___/  |  \_  __ \_/ ___\                     
#   /    /  \___ \|   Y  \  | \/\  \___                     
#  /_____ \/____  >___|  /__|    \___  >                    
#        \/     \/     \/            \/                     
#
#============================================================
# Core
export ZSH="/Users/padoelkemid/.oh-my-zsh"
ZSH_THEME="spaceship"
plugins=(git)
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Preferences
export LC_ALL=en_US.UTF-8
export EDITOR=nvim

# Aliases
alias c="clear"
alias cat="bat"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias ls="colorls -A --sd"
alias man="tldr"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias skc="nvim ~/.skhdrc"
alias szc="source ~/.zshrc"
alias v="nvim"
alias vc="nvim ~/.config/nvim/init.vim"
alias x="exit"
alias ybc="nvim ~/.yabairc"
alias zc="nvim ~/.zshrc"

# Dotfiles Config
alias df='/usr/local/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Application PATHs

## HomeBrew
export PATH=/usr/local/sbin:$PATH

## RubyGems
export PATH=$PATH:$HOME/.gem/ruby/2.3.0/bin
