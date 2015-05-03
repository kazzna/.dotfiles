" stylus.vim
NeoBundle 'wavded/vim-stylus'

augroup stylus
	autocmd!
	autocmd BufNewFile,BufReadPost *.styl set filetype=stylus
augroup END
