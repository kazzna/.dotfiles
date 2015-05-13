# load hook
autoload -Uz add-zsh-hook
# load vcs_info
autoload -Uz vcs_info

# target
zstyle ':vcs_info:*' enable git hg
# %b branch info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
# %a action info
zstyle ':vcs_info:*' actionformats '[%b|%a]'
function _update_vcs_info_msg() {
	psvar=()
	LANG=en_US.UTF-8 vcs_info
	[[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcss_info_msg_0_"
}

add-zsh-hook precmd _update_vcs_info_msg
# update PROMPT
RPROMPT="%1(v|%F{green}%1v%f|)"
