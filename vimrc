call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Set GUI options
colorscheme solarized 
set background=dark
set relativenumber
set colorcolumn=80
let g:Powerline_symbols = 'fancy'
let g:solarized_termtrans = 1

if has("gui_running")
    set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline:h12
    set guioptions-=r " Remove the right hand scrollbar
    set guioptions-=T " Remove the toolbar
endif

set t_Co=256
set term=xterm-256color

set laststatus=2
set ch=2
set list
set listchars=tab:▸\ ,eol:¬

" Syntax enabled by default
syntax enable

" Tabstop
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
filetype plugin indent on

" Text editing options
set encoding=utf-8
set autoindent
set nowrap

" Other options
set cursorline
set ruler
set visualbell
set noerrorbells
set nocompatible

" Leader commands
let mapleader=','

" Kill the arrow keys
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Set backup directories
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set udir=~/.vim/undo

" Map ctrl+n to :NERDTreeToggle
nmap <silent> <c-n> :NERDTreeToggle<CR>

" Search options
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set hlsearch
set incsearch
nnoremap <leader><space> :noh<cr>

" Various mapping options
nnoremap ; :
nnoremap j gj
nnoremap k gk

" Fugitive options
noremap <leader>gs :Gstatus<cr>
noremap <leader>ga :Git add .<cr>
noremap <leader>gc :Gcommit<cr>
noremap <leader>gh :Git hist<cr>
noremap <leader>gp :Git push<cr>
noremap <leader>gu :Git Pull<cr>

