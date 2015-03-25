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
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'rcmdnk/vim-markdown'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'leafgarland/typescript-vim'
"NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'w0ng/vim-hybrid'

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
