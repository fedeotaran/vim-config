" ** NORMAL MODE **
" Add new line on normal mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
" Press ',v' and go to edit .vimrc file
nmap <leader>v :tabedit $MYVIMRC<CR>
" New tab
nmap <leader>at :tabnew<CR>

" ** VISULA MODE **
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
