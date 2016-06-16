" ** NORMAL MODE **
" Add new line on normal mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Press ',v' and go to edit .vimrc file
nmap <leader>v :tabedit $MYVIMRC<CR>

" Tab key mapping
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Panel mapping
nnoremap <leader>sv :Vex!<CR>
nnoremap <leader>sh :Sex<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" ** VISULA MODE **
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" ** INSERT MODE
" Disable Arrow keys in Insert mode
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

