" install plug.vim
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

set shell=/bin/sh

language en_US.UTF-8
syntax on
filetype plugin indent on
set nocompatible
set background=dark

colorscheme default 
set ts=2 sw=2 et
set encoding=utf-8
set fenc=utf-8
set number
set paste
set ruler
set incsearch
set hlsearch

set ignorecase
set smartcase
set hidden
set cursorline
set expandtab
set showcmd
set showmatch
set wildmenu
set autoread
set nobackup
set noswapfile
set backspace=indent,eol,start
set autoindent
set clipboard=unnamed,autoselect

set splitbelow
set splitright

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes for comment

Plug 'dag/vim-fish'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'wombat'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
Plug 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.vue'
Plug 'ryanoasis/vim-devicons'
Plug 'kien/ctrlp.vim'
Plug 'thinca/vim-quickrun'
Plug 'pangloss/vim-javascript'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'terryma/vim-multiple-cursors'
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2 
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=white
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=lightgray

Plug 'tomasr/molokai'
Plug 'elzr/vim-json'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
let g:ale_linters = {
\    'javascript': ['eslint'],
\}
Plug 'airblade/vim-gitgutter'

call plug#end()

" keymap
map <C-o> :NERDTreeToggle<CR>

