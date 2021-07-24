set nocompatible              

set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim' 
Plug 'junegunn/goyo.vim'
Plug 'Brettm12345/moonlight.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'

call plug#end()

" Coding preferences 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on
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
set background=dark
colorscheme moonlight
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
set clipboard+=unnamedplus                                  "yank into clipboard

" Key mappins  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" usual stuff 
let mapleader = ","

imap jj <esc>
map <C-s> :w<CR>
map <C-d> :bd!<CR>
map <C-w> :q<CR>
nmap k gk
nmap j gj
map <Leader>v "+gp
map <Leader>c "+y

" panel nav 
map <C-m><C-j> :CtrlP<CR>
map <C-m><C-m> :CtrlPBuffer<CR>
map <C-g> :NERDTreeToggle<CR>

" splits nav
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" direct files access 
nmap <Leader>fv :e $MYVIMRC<CR>
nmap <Leader>ft :e ~/.dotfiles/todo.md<CR>

" run 
nmap <Leader>rt :!ctags -R --exclude=.git --exclude=log *<CR>

" coc
nmap <C-u><C-u> <Plug>(coc-definition)
nmap <C-u><C-j> <Plug>(coc-references) 
nmap <C-u><C-i> <Plug>(coc-codeaction) 
nmap <C-u><C-y> <Plug>(coc-codelens-action)  
" Plugin settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags 
set tags=./tags;

let g:ctrlp_use_caching = 0

" ale
let g:ale_sign_column_always = 1

" lightline 
let g:lightline = { 'colorscheme' : 'moonlight',
                  \ 'active': {
                  \   'left': [ [ 'mode', 'paste' ],
                  \             [ 'readonly', 'filename', 'modified', 'gitbranch' ] ]
                  \ },
                  \ 'component': {
                  \   'gitbranch': 'FugitiveHead'
                  \ },
                  \ } 

" Auto commmand 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source vimrc when file is saved 
augroup autosourcing
  autocmd! 
  autocmd BufWritePost init.vim source %
augroup END

" execute copen (quickfix window) when using grep
augroup myvimrc
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    lwindow
augroup END

" format xml when opened
" au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"

