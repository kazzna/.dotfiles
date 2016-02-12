if isdirectory(expand('/tmp'))
	function! ZQchecker()
		if expand('%:t') == ""
			q!
		else
			set nobackup
			w! /tmp/%:t
			q!
		endif
	endfunction

	nnoremap ZQ :silent call ZQchecker()<CR>
endif
