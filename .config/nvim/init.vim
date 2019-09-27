"  __________             .___            .__    /\
"  \______   \_____     __| _/____   ____ |  |   )/   ______
"   |     ___/\__  \   / __ |/  _ \_/ __ \|  |       /  ___/
"   |    |     / __ \_/ /_/ (  <_> )  ___/|  |__     \___ \
"   |____|    (____  /\____ |\____/ \___  >____/    /____  >
"                  \/      \/           \/               \/
"  .__       .__  __         .__
"  |__| ____ |__|/  |_ ___  _|__| _____
"  |  |/    \|  \   __\\  \/ /  |/     \
"  |  |   |  \  ||  |   \   /|  |  Y Y  \
"  |__|___|  /__||__| /\ \_/ |__|__|_|  /
"          \/         \/              \/
"============================================================
" God's Rebuke
set nocompatible
"============================================================

" Core Configs
" {{{
set relativenumber
set number
set history=1000
set showcmd
set showmode
set hidden
set updatetime=100
let mapleader=","
set swapfile
set title
set mouse=a
set encoding=utf-8
set formatoptions=tcrq
set shortmess+=c
set autoread
"}}}

" Color
"{{{
syntax on

"" For Papercolor
set t_Co=256
set background=light
colorscheme PaperColor

nmap <silent> <leader><leader> :noh<CR>
"}}}

" Search
"{{{
set incsearch
set hlsearch
set ignorecase
set smartcase
set infercase
set endofline
set backspace=indent,eol,start
set laststatus=2
"}}}

" Fold
"{{{
set foldmethod=marker

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
"}}}

" Indentation
"{{{
filetype plugin indent on
set autoindent
set expandtab
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set list listchars=trail:»,tab:»-
set linebreak

"" Delete trailing whitespace
nnoremap <silent> <F9> :%s/\s\+$//e<CR>

nnoremap <silent> j gj
nnoremap <silent> k gk
"}}}

" Wildmenu & Clipboard
"{{{
set pastetoggle=<F2>
set path+=**
set wildignore+=*/node_modules/*
set wildignore+=*/vendor/*
set wildignore+=*/git/*
set wildmenu

xmap <C-c> "*y
xmap <C-v> "*p
"}}}

" Persistent Undo
"{{{
if has('persistent_undo') && !isdirectory(expand('~').'/.config/nvim/backups')
	silent !mkdir ~/.config/nvim/backups > /dev/null 2>&1
	set undodir=~/.config/nvim/backups
	set undofile
endif
"}}}

"============================================================

" Plugins
"{{{
call plug#begin('~/.local/share/nvim/plugged')

" Almighty Vim God of All
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Utilites
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', { 'do' : 'npm install' }
Plug 'airblade/vim-gitgutter'

" Web
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'

" Aesthetics
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'

call plug#end()
"}}}

" Plugin Configurations
"{{{

" Prettier
let g:prettier#config#print_width=100
let g:prettier#config#tab_width=2
let g:prettier#config#use_tabs='false'
let g:prettier#config#semi='true'
let g:prettier#config#single_quote='true'
let g:prettier#config#bracket_spacing='false'
let g:prettier#config#jsx_bracket_same_line='true'
let g:prettier#config#arrow_parens='always'
let g:prettier#config#trailing_comma='es5'
let g:prettier#config#parser='flow'
let g:prettier#config#config_precedence='prefer-file'
let g:prettier#config#prose_wrap='preserve'
let g:prettier#config#html_whitespace_sensitivity='css'

nmap <leader>p :PrettierAsync<CR>

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['DS_Store', 'node_modules', 'vendor']
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

nmap \ :NERDTreeToggle<CR>

" IndentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='papercolor'


"}}}
