# Python Settings
# pyenv
PYENV_ROOT="${HOME}/.pyenv"
if [[ -d "${PYENV_ROOT}" ]]; then
	if [ ! `echo "$PATH" | grep -q "$PYENV_ROOT"` ]
	then
		export PYENV_ROOT
		export PATH=${PYENV_ROOT}/bin:$PATH
		eval "$(pyenv init -)"
		VIRTUALENV_ROOT="${PYENV_ROOT}/plugin/pyenv-virtualenv"
		if [[ -d "${VIRTUALENV_ROOT}" ]]; then
			eval "$(pyenv virtualenv-init -)"
		fi
	fi
fi
