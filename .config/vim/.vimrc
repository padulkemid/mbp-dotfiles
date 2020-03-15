" Enter the current millenium
set nocompatible

" Numbering
set number
set relativenumber

" System
set ttyfast

" Syntax
syntax enable
filetype plugin indent on

" No wrap
set nowrap

" Line break
set linebreak

" Remember the tw
set textwidth=80

" Colors
set t_Co=256
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme one
set background=dark

" Indent
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

" Minus t because of paste
set formatoptions-=t

" UNIX line endings
set ff=unix

" backspace cursor to inserted indentation
set bs=2

" Window display
set showcmd
set ruler
set laststatus=2

" Fuzzy search
set path+=**
set ignorecase
set infercase
set smartcase
set endofline

" Display all matching files
set wildmenu


" Tag jumping
command! MakeTags !ctags -R .

" Save
command! W :w

" Tweaks for browsing file
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Plugins
call plug#begin('~/.vim/plugged/')

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'rakr/vim-one'


call plug#end()


