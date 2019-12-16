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
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="spaceship"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Preferences
export LC_ALL=en_US.UTF-8
export EDITOR=nvim

# Aliases
alias c="clear"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias ls="colorls -A --sd"
alias man="tldr"
alias preview="fzf --preview 'bat --theme=ansi-dark --color \"always\" {}'"
alias skc="nvim ~/.skhdrc"
alias szc="source ~/.zshrc"
alias v="nvim"
alias vc="nvim ~/.config/nvim/init.vim"
alias x="exit"
alias ybc="nvim ~/.yabairc"
alias zc="nvim ~/.zshrc"
alias please="sudo"

# Dotfiles Config
alias df='/usr/local/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Application PATHs

## HomeBrew
export PATH=/usr/local/sbin:$PATH

## RubyGems
export PATH=$PATH:$HOME/.gem/ruby/2.3.0/bin

## Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

## Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME

## Golang
export GOPATH=$HOME/Gitgud/gondar
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH:$GOBIN
