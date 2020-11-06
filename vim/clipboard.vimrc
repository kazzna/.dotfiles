" クリップボードの設定
set clipboard&
if has('unnamedplus')
	set clipboard^=unnamedplus
else
	set clipboard^=unnamed
endif
