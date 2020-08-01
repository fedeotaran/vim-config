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
set list listchars=tab:»·,trail:·,nbsp:·,eol:¬

" ** Split panels
set splitright      " split new pane right current
set splitbelow      " split new pane below current

" ** Others
"set cursorline      " highlighting cursor line
"set cursorcolumn    " highlighting cursor column
set t_ti= t_te=     " when exit vim show last window
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
set spelllang=es_ar " set spellcheck lang

" ** Set mapleader
let mapleader=","

" ** Source bundles
if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
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
colorscheme gruvbox-material

" disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
" Tmux compatibility
if &term =~ '256color'
  set t_ut=
endif

" Enable truecolors
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

filetype plugin indent on

" ** Source local configs
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

set completefunc=emoji#complete
set omnifunc=emoji#complete
set colorcolumn=81

let g:python_host_prog = $HOME . "/.pyenv/shims/python"
let g:python3_host_prog = $HOME . "/.pyenv/shims/python3"
