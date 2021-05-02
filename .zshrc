## Behaviour

# Autocomplete
autoload -Uz compinit && compinit

# Vi bindings
bindkey -v
bindkey -v '^?' backward-delete-char

# Set cursor change escape for different terminals
if [ $TMUX ]; then
	CURSOR_BLCK="\ePtmux;\e\e[2 q\e\\"
	CURSOR_LINE="\ePtmux;\e\e[6 q\e\\"
else
	CURSOR_BLCK="\e[2 q"
	CURSOR_LINE="\e[6 q"
fi

# Change cursor when changing modes
zle-keymap-select zle-line-init() {
	case $KEYMAP in
		vicmd)      print -n -- $CURSOR_BLCK ;;
		viins|main) print -n -- $CURSOR_LINE ;;
	esac

	zle reset-prompt
	zle -R
}

# Reset the cursor to block when running command
zle-line-finish() {
	print -n -- $CURSOR_BLCK
}

export KEYTIMEOUT=1
zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select


## Looks

# Prompt
PROMPT="%B[%n@%m]: %F{magenta}%~%f%b
> "

# Put a newline before showing the prompt (but not the first time)
precmd() {
    precmd() {
        echo
    }
}

# Colours
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

export CLICOLOR=1


## Aliasses

# Download all files in a directory listing
alias wgetd='wget -r --no-parent -R "index.html*"'

## Plugins

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
