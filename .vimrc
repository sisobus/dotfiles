set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'powerline/powerline'
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
"Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " required
filetype plugin indent on    " required

set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set softtabstop=2
set backspace=indent,eol,start


set laststatus=2
set cindent
set smartindent
set hi=1000

set hls
set scs

syntax on

set nobackup
set tags=tags;/
set ignorecase
set smartcase

set showmatch
set ai

let g:Powerline_symbols='fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set laststatus=2

"set guifont=Menlo\ for\ Powerline
"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_symbols.branch = ''
"let g:airline#extensions#hunks#enabled=0

"let g:airline_section_b = airline#section#create_left(['hunks','branch']) 
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#branch#enabled = 1
let g:airline_theme='ayu_mirage'
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

"let mapleader=","
"map <leader>q :bprev<CR>
"map <leader>w :bnext<CR>

function! AirlineInit()
let g:airline_section_b = airline#section#create(['hunks','branch']) 
"let g:airline_section_y = 'BN: %{bufnr("%")}'
"let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
"let g:airline_section_b = airline#section#create_left(['ffenc', 'hunks', '%f'])
"let g:airline_section_c = airline#section#create(['filetype'])
"let g:airline_section_x = airline#section#create(['%P'])
"let g:airline_section_y = airline#section#create(['%B'])
"let g:airline_section_z = airline#section#create(['%l', '%c'])
endfunction
autocmd VimEnter * call AirlineInit()
