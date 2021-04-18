let test#python#pytest#options = {
  \ 'nearest':   '-vv',
\}
let g:test#javascript#runner = 'jest'
let g:AutoPairsShortcutFastWrap = '<C-.>'


" Active spellchecker
nmap <silent> <leader>s :set spell!<CR>

" Press ',v' and go to edit .vimrc file
nmap <leader>v :tabedit $MYVIMRC<CR>

" Test mapping
nmap <leader>tn :TestNearest<CR>
nmap <leader>tf :TestFile<CR>
nmap <leader>ts :TestSuite<CR>
nmap <leader>tl :TestLast<CR>
nmap <leader>tg :TestVisit<CR>

" Tab key mapping
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nmap tn :tabnew<CR><Plug>VinegarUp
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>

" Panel mapping
nnoremap <leader>sv :Vex!<CR>
nnoremap <leader>sh :Sex<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Pane selector
nmap \ <Plug>(choosewin)
let choosewin_overlay_enable = 1
let g:choosewin_blink_on_land      = 0 " don't blink at land
let g:choosewin_statusline_replace = 0 " don't replace statusline
let g:choosewin_tabline_replace    = 0 " don't replace tabline

" Pairs colors
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{','}']]

" Mix formatter
let g:mix_format_on_save = 1
autocmd FileType c,cpp,java,php,ruby,elixir autocmd BufWritePre <buffer> %s/\s\+$//e
