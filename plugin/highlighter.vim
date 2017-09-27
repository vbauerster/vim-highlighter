function! s:WordHighlighter()
	echo 'Highlight color (1-6): '
	let n = getchar()
	if n < 49 || n > 54
		return
	endif
	" Save our location.
    execute "normal! i\<esc>l"
	" Yank the current word into the z register.
	normal! "zyiw
	" Calculate an arbitrary match ID.  Hopefully nothing else is using it.
	let mid = 86750 + n
	" Clear existing matches, but don't worry if they don't exist.
	silent! call matchdelete(mid)
	" Construct a literal pattern that has to match at boundaries.
	let pat = '\V\<' . escape(@z, '\') . '\>'
	" Actually match the words.
	call matchadd("HighlightWord" . n, pat, 1, mid)
	" Move back to our original location.
    execute "normal! gi\<esc>l"
endfunction

command! Highlight call s:WordHighlighter()

" Highlight colors constants
hi def HighlightWord49 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi def HighlightWord50 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi def HighlightWord51 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi def HighlightWord52 guifg=#000000 ctermfg=16 guibg=#ffff00 ctermbg=226
hi def HighlightWord53 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi def HighlightWord54 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195
