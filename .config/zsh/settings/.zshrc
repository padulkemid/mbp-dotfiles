## Core
export ZSH="/Users/padulkemid/.config/zsh/"
export PATH=$HOME/bin:/usr/local/bin:$PATH

## Options

ZSH_THEME="smt"
HYPHEN_INSENSITIVE="true"

## Plugins
plugins=(git brew osx)
fpath=(/usr/local/share/zsh-completions $fpath)
eval "$(jump shell)"

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


## Preferences

export LC_ALL=en_US.UTF-8
export EDITOR=nvim

## Aliases

# == CORE == 
alias c="clear"
alias x="exit"
alias v="nvim"
alias vc="nvim ~/.config/nvim/init.vim"
alias zc="nvim ~/.config/zsh/settings/.zshrc"
alias szc="source ~/.config/zsh/settings/.zshrc"
alias dots="cd ~/Gitgud/mbp-dotfiles"
alias ggh8="~/Gitgud/h8"
alias ls="gls --color -AF --group-directories-first"
# == CUSTOM ==
alias please="sudo"
alias pohon="tree"
# == APPS ==
alias tc="nvim ~/.config/tmux/tmux.conf"
alias tmux="tmux -f ~/.config/tmux/tmux.conf new -s padul"
alias ctags="`brew --prefix`/bin/ctags"
alias nggolek="fzf --preview 'cat {}'"
alias alac="nvim ~/.config/alacritty/alacritty.yml"
alias pgstart="pg_ctl -D /usr/local/var/postgres start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop"

## Application

# Homebrew

export PATH=/usr/local/sbin:$PATH

# Go

export GOPATH=$HOME/Gitgud/work/goreng
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Ruby

export PATH=$PATH:/usr/local/lib/ruby/gems/2.7.0/bin
export PATH=/usr/local/opt/ruby/bin:$PATH
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

# curl
export PATH=/usr/local/opt/curl/bin:$PATH

# ncurses

export PATH=/usr/local/opt/ncurses/bin:$PATH
export LDFLAGS="-L/usr/local/opt/ncurses/lib"
export CPPFLAGS="-I/usr/local/opt/ncurses/include"

# Java

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME

# Android

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# GPG
export GPG_TTY=$(tty)

# starship
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
eval "$(starship init zsh)"

