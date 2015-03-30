"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/kazzna/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/kazzna/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

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

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'Shougo/vimshell'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" クリップボードの設定
set clipboard&
set clipboard^=unnamedplus

" color
colorscheme desert
syntax on

" ハイライトの設定
set hlsearch
nnoremap <ESC><ESC> :nohlsearch<CR>

" インデントの設定
set noexpandtab
" set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" 行番号とかLineとか
set number
set cursorline
highlight CursorLine term=bold cterm=bold guibg=Grey40
set incsearch
