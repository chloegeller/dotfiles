#!/usr/bin/env zsh

alias sshcfg="${EDITOR} ~/.ssh/config"

alias -g zrc="${EDITOR} ~/.zshrc && source ~/.zshrc"

#: ls
[ $(uname) = "Darwin" ] && alias -g ls="gls"

alias -g ll="ls --color --group-directories-first -lhFv"
alias -g la="ll -A"
alias -g lr="ll -r"
alias -g ld="ll -d */"
alias l="ll"

ignoreRegex=".*\(Permission denied\)"
ignoreRegex="${ignoreRegex}\|\(Operation not permitted\)"
alias size="du -ch -d 1 2> >(grep -v \"${ignoreRegex}\") | sort -h"

#: rm
[ $(command -v trash-put) ] && alias rm="trash-put"
[ $(command -v trash-put) ] && alias rmdir="trash-put"

#: Anaconda
alias ca="conda activate"
alias ce="conda env create -f"
alias cl="conda list"
alias cel="conda env list"

alias -g sudo="sudo -E"

alias py="python"
