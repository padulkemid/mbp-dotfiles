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
set showcmd
set showmode
set signcolumn=yes
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
set autowrite
set nobackup
set nowritebackup
set splitright
set splitbelow
set fileformats=unix,dos,mac
"}}}

" Undo
"{{{
set history=1000
set undofile
set undolevels=100
set undoreload=1000
set undodir=~/.config/nvim/undodir
"}}}

" Color
"{{{
syntax on
set termguicolors
colorscheme seoul256-light

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
"}}}

" Statusline
"{{{
set laststatus=2

" "" Display format
function! s:statusline_expr()
let pur = "%#PmenuSel#"
let gra = "%#LineNr#"
let mod = "%{&modified ? '[+] ' : !&modifiable ? '[x] ' : ''}"
let ro  = "%{&readonly ? '[RO] ' : ''}"
let ft  = " %{len(&filetype) ? '['.&filetype.'] ' : ''}"
let fug = "%{exists('g:loaded_fugitive') ? fugitive#statusline() : 'aury'}"
let sep = ' %= '
let pos = ' %-12(%l : %c%V%) '
let pct = ' %P '


return pur.' aury '.'%*'.' [%n] %f %<'.mod.gra.ro.ft.fug.sep.pos.'%*'.pct
endfunction
let &statusline = s:statusline_expr()
"}}}

" Fold
"{{{
set foldmethod=manual

augroup filetype_vim
autocmd!
autocmd FileType vim setlocal foldmethod=marker
augroup END

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
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

" not to be confused with escape from insert mode
inoremap <C-c> <Esc>
xmap <C-c> "*y
xmap <C-v> "*p
"}}}

" Macros
"{{{

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap n nzzzv
nnoremap N Nzzzv

noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz

nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

map q: :q

nmap <leader>tp :tabp<CR>
nmap <leader>tn :tabn<CR>
nmap <leader>te :tabe<CR>
nmap <leader>tc :tabc<CR>

" command dewa, hati-hati
nmap <leader>f :find<space>

" for easy motion
map <leader>e <Plug>(easymotion-prefix)
map <silent> <leader>ew <Plug>(easymotion-bd-w)

"}}}

"============================================================

" Plugins
"{{{
call plug#begin('~/.local/share/nvim/plugged')

" Vim Omnipotent Being
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'

" Vim Another Omniscience Being
Plug 'junegunn/seoul256.vim'
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'

" Godsense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Utilites
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'andymass/vim-matchup'
Plug 'easymotion/vim-easymotion'
Plug 'AndrewRadev/splitjoin.vim'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'

" Go, for later
" Plug 'fatih/vim-go'

call plug#end()
"}}}

" Plugin Configurations
"{{{

" Goyo and Limelight
"{{{
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
"}}}

" vim-javascript
"{{{
let g:vim_jsx_pretty_colorful_config=1
"}}}

" vim-go
" {{{
let g:go_def_mapping_enabled = 0
" }}}

" NERDTree
"{{{
let NERDTreeShowHidden=1
let NERDTreeIgnore=['DS_Store', 'node_modules', 'vendor']
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

nmap \ :NERDTreeToggle<CR>
"}}}

" CoC Nvim
"{{{
set pumheight=10
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
if (index(['vim','help'], &filetype) >= 0)
  execute 'h '.expand('<cword>')
else
  call CocAction('doHover')
endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 Format :call CocAction('format')
command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')
"}}}

"}}}


"============================================================

" Custom Commands
"{{{

" Tags
command MakeTags !ctags -R .

" Typo
command W :w
command Q :q
comman Wq :wq

" ejs
autocmd BufNewFile *.ejs set filetype=html
autocmd BufRead *.ejs set filetype=html

"}}}

