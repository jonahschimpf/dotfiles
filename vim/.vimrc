"be improved, require idk what this means
set nocompatible
filetype off "required for vundle
set backspace=indent,eol,start

set rtp+=~/dotfiles/vim/.vim/bundle/Vundle.vim
call vundle#begin() 
Plugin 'VundleVim/Vundle.vim'
"example of a local project (i.e. when working on air-gap, need the file://
"prefix
Plugin 'file:///home/jonah/.local_bundles/YouCompleteMe'
Plugin 'https://github.com/preservim/nerdtree.git'
call vundle#end()

" YCM KEYBINDINGS
function! YcmStuff() 
    nnoremap si :YcmCompleter GoToDefinition<cr>
    nnoremap sk :YcmRestartServer<cr>
    nnoremap <F1> :YcmCompleter FixIt<cr>
    nnoremap K :YcmCompleter GetDoc<cr>
endfunction

function! Rusty()
    nnoremap <C-e> :terminal cargo run<cr>
    inoremap <C-e> <esc>:terminal cargo run<cr>
endfunction 

augroup rust
    autocmd!
    autocmd FileType rust call Rusty()
	autocmd FileType rust call YcmStuff()
augroup end

nmap <leader>D <plug>(YCMHover)
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
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
"Stop annoying scratch pad 
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

