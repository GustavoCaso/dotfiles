set nocompatible
syntax on
set background=dark
set laststatus=2

" Trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red

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
set textwidth=80

" Backups
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

" However, in Git commit messages, let’s make it 72 characters
autocmd FileType gitcommit set textwidth=72
autocmd FileType gitcommit set colorcolumn=73
