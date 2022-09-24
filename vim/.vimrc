set nocompatible              

set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Coding preferences 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on
colorscheme gruvbox
set background=dark
syntax on                                                   "enable highlighting for syntax
set tabstop=2                                               "number of spaces when <TAB> character is encountered when opening a file
set softtabstop=2                                           "in insert mode, number of spaces that is inserted when you hit <TAB>
set expandtab                                               "spaces are used when tabbing 
set shiftwidth=2                                            "how many columns text is indented with the reindent operations
set autoindent                                              "autoindent the code  
filetype plugin indent on    
filetype plugin on
set showmatch                                               "show matching brace/parenthesis/comment...
set matchtime=3                                             "set display duration of the match 
set noswapfile                                              "no swap file created when opening a file
set hidden                                                  "allow unsaved buffers 
set history=10000                                           "command line history size

" Search 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch                                               "incremental search as character are typed 
set hlsearch                                                "highligt the string matched by the search 
set ignorecase smartcase                                    "make searches case-sensitive only if they contain upper-case characters

" UI preferences 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showcmd                                                 "show command in bottom bar
set wildmenu                                                "visual autocomplete for command menu
set cursorline                                              "highlight current line
set cmdheight=1                                             "vim command line height 
set laststatus=2                                            "always display status line 
set ruler                                                   "display line/column number left bottom  
set lazyredraw                                              "redraw only when we need to.
set number                                                  "display line number
set switchbuf=useopen                                       "use switchbuf (quickfix)
set winwidth=79
set t_ti= t_te=                           
set scrolloff=3                                             "keep more context when scrolling
set nobackup                                                "no backups
set nowritebackup                                           "no backups
set backspace=indent,eol,start                              "allow backspacing
:set timeout timeoutlen=1000 ttimeoutlen=100                "fix slow insert
let g:sh_noisk=1
set foldmethod=manual                                       "folding off
set nofoldenable                                            "folding off
set nojoinspaces                                            "punctuation
set autoread                                                "load if changed
set splitbelow 
set splitright 
set clipboard=unnamed                                      "yank into clipboard

" Key mappins  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" usual stuff 
let mapleader = ","

imap jj <esc>
map <C-s> :w<CR>
map <C-d> :bd!<CR>
map <C-w> :q<CR>
map k gk
nmap j gj

" panel nav 
map <C-p> :NERDTreeToggle<CR>

" splits nav
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
