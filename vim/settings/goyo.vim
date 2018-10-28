let g:limelight_paragraph_span = 1
let g:limelight_priority = -1

function! s:goyo_enter()
	if has('gui_running')
		set fullscreen
		set background=light
		set linespace=7
	elseif exists('$TMUX')
		silent !tmux set status off
	endif
	Limelight
	let &l:statusline = '%M'
	hi StatusLine ctermfg=red guifg=red cterm=NONE gui=NONE
endfunction

function! s:goyo_leave()
	if has('gui_running')
		set nofullscreen
		set background=dark
		set linespace=0
	elseif exists('$TMUX')
		silent !tmux set status on
	endif
	Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

nnoremap <Leader>G :Goyo<CR>
