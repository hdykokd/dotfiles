set encoding=utf-8
set fileencoding=utf-8
set fenc=utf-8
scriptencoding utf-8
set autochdir

set shell=/bin/sh
language en_US.UTF-8
syntax on
filetype plugin indent on
colorscheme default
set ts=2 sw=2 et
set number
set ruler
set incsearch
set hlsearch
set ignorecase
set smartcase
set hidden
set modeline
set cursorline
set expandtab
set showcmd
set showmatch
set matchtime=1
set wildmenu
set autoread
set nobackup
set noswapfile
set backspace=indent,eol,start
set autoindent
set clipboard=unnamed,autoselect
set splitright

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes for comment
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'
set statusline+=%{gutentags#statusline()}
let g:gutentags_ctags_tagfile = '.tags'
Plug 'valloric/youcompleteme', { 'do': './install.py' }

" install nerd-font
"   - brew tap caskroom/fonts
"   - brew cask install font-hack-nerd-font
Plug 'ryanoasis/vim-devicons'

" interface
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'wombat'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#whitespace#enabled = 1
let g:airline_powerline_fonts = 1
nmap <C-@> <Plug>AirlineSelectPrevTab
nmap <C-[> <Plug>AirlineSelectNextTab

Plug 'kien/ctrlp.vim'
nnoremap <leader>. :CtrlPTag<cr>
Plug 'tacahiroy/ctrlp-funky'
let g:ctrlp_match_window = 'order:ttb,min:20,max:20,results:100'
let g:ctrlp_types = ['fil']
let g:ctrlp_extentions = ['funky']
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

Plug 'yggdroot/indentline'
Plug 'bronson/vim-trailing-whitespace'

" commands
Plug 'thinca/vim-quickrun'

" formatter
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" language
Plug 'sheerun/vim-polyglot'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'
Plug 'tpope/vim-markdown'
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'
autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown
" Need: kannokanno/previm
nnoremap <silent> <C-m><C-p> :PrevimOpen<CR>
let g:vim_markdown_folding_disabled=1
let g:previm_enable_realtime = 1

Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
let g:ale_linters = {
\    'javascript': ['eslint'],
\}
Plug 'rking/ag.vim'
let g:ctrlp_use_caching=0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

call plug#end()

" keymap
map <C-o> :NERDTreeToggle<CR>
