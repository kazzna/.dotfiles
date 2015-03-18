# Python Settings
# pyenv
echo "${0} called"
if [ -d "${HOME}/.pyenv" ]; then
	export PYENV_ROOT="${HOME}/.pyenv"
	if [ -d "${PYENV_ROOT}" ]; then
		export PATH=${PYENV_ROOT}/bin:$PATH
		eval "$(pyenv init -)"
	fi
fi
