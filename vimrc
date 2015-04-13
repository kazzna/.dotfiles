scriptencoding utf-8

" NeoBundle Start
if filereadable(expand('$HOME/.dotfiles/vim/NeoBundleStart.vimrc'))
	source $HOME/.dotfiles/vim/NeoBundleStart.vimrc
endif

" Add or remove your Bundles here:
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'gre/play2vim'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'othree/html5.vim'
NeoBundle 'rcmdnk/vim-markdown'
NeoBundle 'rking/ag.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'lambdatoast/elm.vim'

" NeoBundle Finalize
if filereadable(expand('$HOME/.dotfiles/vim/NeoBundle/incsearch.vimrc'))
	source $HOME/.dotfiles/vim/NeoBundle/incsearch.vimrc
endif

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'Shougo/vimshell'

" NeoBundle Finalize
if filereadable(expand('$HOME/.dotfiles/vim/NeoBundleEnd.vimrc'))
	source $HOME/.dotfiles/vim/NeoBundleEnd.vimrc
endif
"End NeoBundle Scripts-------------------------

" クリップボードの設定
if filereadable(expand('$HOME/.dotfiles/vim/clipboard.vimrc'))
	source $HOME/.dotfiles/vim/clipboard.vimrc
endif

" look & feel
if filereadable(expand('$HOME/.dotfiles/vim/looknfeel.vimrc'))
	source $HOME/.dotfiles/vim/looknfeel.vimrc
endif

" インデントの設定
if filereadable(expand('$HOME/.dotfiles/vim/indent.vimrc'))
	source $HOME/.dotfiles/vim/indent.vimrc
endif
