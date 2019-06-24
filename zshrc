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

## Configs added by me...
# 日本語表示
setopt print_eight_bit

# default editor
EDITOR=/usr/bin/vim
if [[ -f "$EDITOR" ]]; then
	export EDITOR
fi

# load library function
function loadlib() {
	lib=${1:?"Must specify the library file..."}
	if [[ -f "$lib" ]]; then
		source "$lib"
	fi
}
ZDIR=$(dirname $(greadlink -f ${(%):-%N}))/zsh

# aliases
if [[ -x /usr/bin/dircolors ]]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
fi

alias nicely='nice -n19 ionice -c3'

# history settings
loadlib "${ZDIR}/history.zshrc"

# Color settings
autoload colors
colors

# git settings
#loadlib "${ZDIR}/git.zshrc"
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn hg bzr
zstyle ':vcs_info:*' formats '(%s:%b)'
zstyle ':vcs_info:*' actionformats '(%s:%b|%a)'
zstyle ':vcs_info:(svn|bzr):*' branchformat '%b:r%r'
zstyle ':vcs_info:bzr:*' use_simple true

precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
local p_vcs="%1(v|%F{green}%1v%f|)"

# PROMPT
local p_info="%n@%m${WINDOW:+"[$WINDOW]"}"
local p_cdir="%B%F{blue}[%~]%f%b"
local p_nl=$'\n'
local p_mark="%B%(?,%F{green},%F{red})%(!,#,>)%f%b"
PROMPT="${p_info} ${p_cdir} ${p_vcs}${p_nl}${p_mark} "

# python settings
loadlib "${ZDIR}/python.zshrc"

# nvm settings
loadlib "${ZDIR}/nvm.zshrc"

alias nicely='nice -n 19 ionice -c 3'

# rbenv
if [ -f "/usr/local/bin/rbenv" ]
then
	eval "$(rbenv init -)"
fi
