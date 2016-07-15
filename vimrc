set nocompatible
call plug#begin('~/.vim/bundle')
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'thoughtbot/vim-rspec'
Plug 'mileszs/ack.vim'
call plug#end()
set wildignore+=*/tmp/*,*/node_modules/*,*/public/*,*/log/*
syntax on
set background=dark
colorscheme solarized
filetype plugin indent on

" Keys Mapping
map <F2> :NERDTreeToggle<CR>
map <F7> mzgg=G`z
nnoremap <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Split Direction
set splitright

" Leader
let mapleader = "\<Space>"

" Font
set gfn=Monaco:h14
" Tabs
set ts=2  " Tabs are 2 spaces
set shiftwidth=2  " Tabs under smart indent
set smarttab
set expandtab

" Lines and Hightlight cursor
set nu
set cursorcolumn
set cursorline
set ruler
set colorcolumn=80

" RSpec.vim mappings
let g:rspec_runner = "os_x_iterm2"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Backups
set backup   " keep a backup file
set backupdir=~/.vim/backup " Where backups will gos
set directory=~/.vim/tmp     " Where temporary files will go.

" Hightlight
set hlsearch
map <F1> :noh<CR>












