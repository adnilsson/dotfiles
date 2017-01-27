# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch notify
unsetopt autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/adrian/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Exports
export BROWSER=/usr/bin/firefox
export EDITOR='vim'

## Functions

# use mm "search term" to play audio directly.
function mm() {
    mpv --no-video --ytdl-format=bestaudio ytdl://ytsearch10:"$@"
}

# will write to .fehbg which is executed in i3conf
function setbg() {
    if [[ $# -ge 2 ]]; then
        echo setbg WARNING: too many arguments >&2
    elif [[ $# -eq 0 ]]; then
        echo setbg WARNING: missing argument >&2
    else
        local filepath=${~1}
        local filename=${1##*/} 
        local default=$HOME/Images/wallpapers/$filename
        if [[ -f $filepath ]]; then
            echo setbg: using $filepath
            feh --bg-scale $filepath
        elif [[ -f $default ]]; then
            echo setbg: using $default
            feh --bg-scale $default
        else
            echo setbg WARNING: no file found - exiting >&2
        fi
    fi
}

# make directory and cd into it.
 mkcd() {
     mkdir -p "$1"
     cd "$1"
 }

## Aliases

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias home="cd ~/"

alias lsa="ls -hal"
alias mv="mv -i"
alias mkdirs="mkdir -p"
alias pacinstall="sudo pacman -S"
