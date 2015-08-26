" *** Use Vim settings, rather then Vi settings.
set nocompatible

" ** Backup
set nobackup
set nowritebackup
set noswapfile

" ** Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab       " use spaces instead of tabset shiftwidth=2
set tabpagemax=50

" ** Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Split panels
set splitbelow
set splitright

" ** Others
set history=50      " history commands
set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set incsearch       " do incremental searching
set laststatus=2    " always display the status line
set autowrite       " automatically :write before running commands
set number          " use normal numbers
set relativenumber  " and relative line numbers
set backspace=2     " backspace deletes like most programs in insert mode
set autoread        " automatically read a file when it is changed from the outside
set splitright      " split new pane right current
set splitbelow      " split new pane below current

" ** Set mapleader
let mapleader=","

" toggles whether or not the current window is automatically zoomed
function! ToggleMaxWins()
  if exists('g:windowMax')
    au! maxCurrWin
    wincmd =
    unlet g:windowMax
  else
    augroup maxCurrWin
      " au! BufEnter * wincmd _ | wincmd |
      " maximize it!
      au! WinEnter * wincmd _ | wincmd |
    augroup END
    do maxCurrWin WinEnter
    let g:windowMax=1
  endif
endfunction
nnoremap <Leader>z :call ToggleMaxWins()<CR>

" ** Source bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" ** Source bundles settigs
if filereadable(expand("~/.vim/settings.vim"))
  source ~/.vim/settings.vim
endif

" ** Color settings
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
syntax on
syntax enable
set t_Co=256
set background=dark
colorscheme gruvbox

" disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
" Tmux compatibility
if &term =~ '256color'
  set t_ut=
endif

filetype plugin indent on

" ** Source local configs
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

let &colorcolumn=join(range(81,999),",")
let &colorcolumn="90,".join(range(400,999),",")
