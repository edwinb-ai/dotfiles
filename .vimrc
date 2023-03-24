" Use Space as maplearder key
let mapleader=" "
nnoremap <SPACE> <Nop>
" Remap the window movement to the Ctrl key
" and also maximize it
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
" Remap the window movement when using
" vertical split views.
map <Leader>wv <C-W>v
map <Leader>wl <C-W>l
map <Leader>wh <C-W>h
" Remap escape to avoid it
imap jk <Esc>

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Colorize bracket pairs
Plug 'luochen1990/rainbow'
" Add support for JuliaLang
Plug 'JuliaEditorSupport/julia-vim'
" Add the matchit plugin
Plug 'https://github.com/adelarsq/vim-matchit'
" A commenter plugin
Plug 'preservim/nerdcommenter'
" Easily manipulate surroundings
Plug 'tpope/vim-surround'
" Add support for Markdown
Plug 'plasticboy/vim-markdown'
" Add support for Fortran
Plug 'rudrab/vimf90' 
" Like VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

" Plugin configs
let g:rainbow_active = 1 " To enable rainbow coloring
"" General
set number	" Show line numbers
set relativenumber " Show relative number to cursor
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=90	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab

"" Advanced
set ruler	" Show row and column ruler information

set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
set wmh=0 " Set the minimum window height to 0
set noswapfile
filetype plugin on
syntax on

" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
            \ CheckBackspace() ? "\<Tab>" :
                  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

