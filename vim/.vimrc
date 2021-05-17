set nocompatible              
filetype off                  
call plug#begin('~/.vim/plugged')

Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-fugitive'

"Plugin 'tpope/vim-surround'
"Plugin 'mattn/emmet-vim'

call plug#end()

" Coding preferences 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                                                   "enable highlighting for syntax
set shell=/bin/bash
colorscheme onehalfdark

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
set colorcolumn=100
set showcmd                                                 "show command in bottom bar
set wildmenu                                                "visual autocomplete for command menu
set cursorline                                              "highlight current line
set cmdheight=2                                             "vim command line height 
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

" Key mappins  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<space>"

" usual stuff 
imap jj <esc>
map <C-u> :w<CR>
imap <C-u> <Esc>:w<CR>
map <C-q> :q!<CR>
nmap k gk
nmap j gj
" nmap <Leader>,, "*p 
" vmap <Leader>, "*y 
" nmap <Leader>/ :nohl<CR>

" splits nav
map <C-h> <C-w><C-h>
map <C-j> <C-w><C-j>
map <C-k> <C-w><C-k>
map <C-l> <C-w><C-l>

" Code navigation access
map <C-m> :Files<CR>
map <C-n> :Buffers<CR>
map <C-g> :NERDTreeToggle<CR>

" leaders 
map <leader>f :Ag<CR>
map <leader>y :Goyo<CR>
map <leader>s :Gstatus<CR>
map <leader>p :Gpush<CR>

nmap <Leader>fv :e $MYVIMRC<CR>
nmap <Leader>rj :%!python -m json.tool<CR>
nmap <Leader>rt :!ctags -R --exclude=.git --exclude=log *<CR>

" Plugin settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ctags 
set tags=./tags;

" ale
let g:ale_sign_column_always = 1

" Auto commmand 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source vimrc when file is saved 
augroup autosourcing
  autocmd! 
  autocmd BufWritePost .vimrc source %
augroup END

" execute copen (quickfix window) when using grep
augroup myvimrc
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    lwindow
augroup END

" format xml when opened
" au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
