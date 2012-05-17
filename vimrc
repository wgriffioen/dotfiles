call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Set GUI options
set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline:h12
set background=dark
colorscheme solarized 
let g:solarized_termtrans = 1
set number
set laststatus=2
set guioptions-=r " Remove the right hand scrollbar
set guioptions-=T " Remove the toolbar
let g:Powerline_symbols = 'fancy'

" Syntax enabled by default
syntax enable

" Tabstop
set tabstop=4
set shiftwidth=4
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
set hlsearch
set incsearch
set ignorecase
set smartcase

" Various mapping options   
nnoremap ; :
nnoremap j gj
nnoremap k gk
