## Plugins
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Behaviour
# Autocomplete
autoload -Uz compinit && compinit

## Looks
# Prompt
PROMPT="%B[%n@%m]: %F{cyan}%(4~|.../%3~|%~)%f %b
> "

# Put a newline before showing the prompt (but not the first time)
precmd() {
    precmd() {
        echo
    }
}

# Coloured man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

## Aliasses
# Download all files in a directory listing
alias wgetd='wget -r --no-parent -R "index.html*"'
