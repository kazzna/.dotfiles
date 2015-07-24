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
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'vim-scripts/sudo.vim'
NeoBundle 'dag/vim2hs'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'idris-hackers/idris-vim'

" incsearch.vim
if filereadable(expand('$HOME/.dotfiles/vim/NeoBundle/incsearch.vim'))
	source $HOME/.dotfiles/vim/NeoBundle/incsearch.vim
endif

" stylus.vim
if filereadable(expand('$HOME/.dotfiles/vim/NeoBundle/stylus.vim'))
	source $HOME/.dotfiles/vim/NeoBundle/stylus.vim
endif

" jade.vim
if filereadable(expand('$HOME/.dotfiles/vim/NeoBundle/jade.vim'))
	source $HOME/.dotfiles/vim/NeoBundle/jade.vim
endif

" jsx.vim
if filereadable(expand('$HOME/.dotfiles/vim/NeoBundle/jsx.vim'))
	source $HOME/.dotfiles/vim/NeoBundle/jsx.vim
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

" ビープ音を消す
if filereadable(expand('$HOME/.dotfiles/vim/nobeep.vimrc'))
	source $HOME/.dotfiles/vim/nobeep.vimrc
endif
