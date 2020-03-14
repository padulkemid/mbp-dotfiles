## Core
export ZSH="/Users/padulkemid/.config/zsh/"
export PATH=$HOME/bin:/usr/local/bin:$PATH

## Options

ZSH_THEME="spaceship"
HYPHEN_INSENSITIVE="true"

## Plugins
plugins=(git brew osx)
fpath=(/usr/local/share/zsh-completions $fpath)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


## Preferences

export LC_ALL=en_US.UTF-8
export EDITOR=nvim

## Aliases

alias c="clear"
alias x="exit"
alias v="nvim"
alias vc="nvim ~/.config/nvim/init.vim"
alias zc="nvim ~/.zshrc"
alias szc="source ~/.zshrc"
alias ls="colorls -A --gs --sd"
alias please="sudo"
alias pohon="tree"
alias tmux="tmux -f ~/.config/tmux/tmux.conf"
alias gitgud="~/Gitgud/"
alias ctags="`brew --prefix`/bin/ctags"

## Application

# Homebrew

export PATH=/usr/local/sbin:$PATH

# Ruby

export PATH=$PATH:/usr/local/lib/ruby/gems/2.7.0/bin
export PATH=/usr/local/opt/ruby/bin:$PATH
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

# Java

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME

# Android

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
