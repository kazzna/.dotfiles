scriptencoding utf-8

set encoding=utf-8
set fileencodings=utf-8,utf-16,sjis,euc-jp,iso-2022-jp

" クリップボードの設定
if filereadable(expand('~/.dotfiles/vim/clipboard.vimrc'))
	source ~/.dotfiles/vim/clipboard.vimrc
endif

" look & feel
if filereadable(expand('~/.dotfiles/vim/looknfeel.vimrc'))
	source ~/.dotfiles/vim/looknfeel.vimrc
endif

" インデントの設定
if filereadable(expand('~/.dotfiles/vim/indent.vimrc'))
	source ~/.dotfiles/vim/indent.vimrc
endif

" ビープ音を消す
if filereadable(expand('~/.dotfiles/vim/nobeep.vimrc'))
	source ~/.dotfiles/vim/nobeep.vimrc
endif

" ZQ時に/tmpにバックアップを！！
if filereadable(expand('~/.dotfiles/vim/backupZQ.vimrc'))
	source ~/.dotfiles/vim/backupZQ.vimrc
endif

"dein Scripts-----------------------------
if &compatible
	set nocompatible " Be iMproved
endif

" plugin directory
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" get dein.vim
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" Required:
call dein#begin(s:dein_dir)

let s:strict = '~/.dotfiles/vim/dein/strict.toml'
let s:lazy = '~/.dotfiles/vim/dein/lazy.toml'

" cache tomls
if dein#load_cache([expand('<sfile>'), s:strict, s:lazy])
	call dein#load_toml(s:strict, {'lazy': 0})
	call dein#load_toml(s:lazy, {'lazy': 1})
	call dein#save_cache()
endif

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"	call dein#install()
"endif

"End dein Scripts-------------------------

" for incsearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" jsx.vim
let g:jsx_pragma_required = 1

" stylus.vim
augroup stylus
	autocmd!
	autocmd BufNewFile,BufReadPost *.styl set filetype=stylus
augroup END
