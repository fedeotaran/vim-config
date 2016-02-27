" ** NORMAL MODE **
" Add new line on normal mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Press ',v' and go to edit .vimrc file
nmap <leader>v :tabedit $MYVIMRC<CR>

" ** Tab key mapping
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" ** VISULA MODE **
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
