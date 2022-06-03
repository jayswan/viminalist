syntax enable
set ruler
set nobackup
set nocompatible
set encoding=utf-8
set showcmd
set number
set background=dark

"" Indentation
set autoindent
set smarttab
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4

"" if has("autocmd")
filetype on
filetype indent on
filetype plugin on
"" endif

"" Whitespace
set nowrap
set backspace=indent,eol,start

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd BufNewFile,BufReadPost *.md set filetype=markdown


"" Searching
set hlsearch
set incsearch
set ignorecase

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

inoremap jj <ESC>

let mapleader = ","
set gdefault
set showmatch
nnoremap <leader><space> :noh<cr>
nnoremap <leader>r :set syn=ruby<cr>
nnoremap <leader>p :set paste<cr>
nnoremap <leader>n :set nopaste<cr>
nnoremap <leader>t :NERDTreeToggle
"" make p match surrounding indents and c-p not match
nnoremap p ]p
nnoremap <c-p> p
imap <C-A> <ESC>^i
imap <C-E> <ESC>A
