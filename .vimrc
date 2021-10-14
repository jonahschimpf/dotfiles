"be improved, require idk what this means
set nocompatible
filetype off "required for vundle
set backspace=indent,eol,start

set rtp+=~/vim/.vim/bundle/Vundle.vim
call vundle#begin() 
Plugin 'VundleVim/Vundle.vim'
"example of a local project (i.e. when working on air-gap, need the file://
"prefix
Plugin 'file:///home/jonah/.local_bundles/YouCompleteMe'
Plugin 'https://github.com/preservim/nerdtree.git'
call vundle#end()
"set nice line numbers
set number
"set nice  colorscheme
colorscheme badwolf
syntax on
"enable plugins for nice rust, etc
filetype plugin indent on
"set non garbage tabs
set tabstop=4
"set non garbage tabs when editing
set softtabstop=4
"turn tabs into space (four spaces)
set expandtab
"makes {} [] () look nice
inoremap {<cr> <cr>}<c-o>O<tab>
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>


"relative numbers to be a hacker
set relativenumber
"show comand in bottom bar
set showcmd
"highlight current line
set cursorline
" visual autocomplete for command menu
set wildmenu
"high light matching [{{( yaknow
set showmatch

" SEARCHING
" search as characters are entered
set incsearch
" highlight matches 
set hlsearch
" turn off search highlight, current \ + <space>
nnoremap <leader><space> :nohlsearch<CR>
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" auto indent
set autoindent
set noerrorbells
set shiftwidth=4

