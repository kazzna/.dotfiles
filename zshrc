# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch
unsetopt autocd beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Configs added by me...
# Color settings
autoload colors
colors
local p_info="%n@%m${WINDOW:+"[$WINDOW]"}"
local p_cdir="%B%F{blue}[%~]%f%b"$'\n'
local p_mark="%B%(?,%F{green},%F{red})%(!,#,>)%f%b"
PROMPT="$p_info $p_cdir$p_mark "
