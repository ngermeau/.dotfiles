
set nocompatible              
language en_US

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'Brettm12345/moonlight.vim'

call vundle#end()            
" look at startify for neovim

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

" Key mappins  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<space>"

" usual stuff 
imap jj <esc>
map <C-s> :w<CR>
imap <C-u> <Esc>:w<CR>
map <C-q> :q!<CR>
nmap k gk
nmap j gj
" nmap <Leader>,, "*p 
" vmap <Leader>, "*y 
" nmap <Leader>/ :nohl<CR>

" panel nav 
map <C-m> :CtrlP<CR>
" map <C-m> :CtrlPBuffer<CR>
map <C-g> :NERDTreeToggle<CR>

" splits nav
map <C-h> <C-w><C-h>
map <C-j> <C-w><C-j>
map <C-k> <C-w><C-k>
map <C-l> <C-w><C-l>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap <C-q> :q!<CR>

" terminal 
nmap <C-a><C-v> :vsplit term://bash<CR>
map <C-a><C-x> :split term://bash<CR>

" git 
map <leader>iw :Gwrite<CR>
map <leader>ic :Gcommit<CR>

" direct files access 
nmap <Leader>fv :e $MYVIMRC<CR>

" run 
nmap <Leader>rr :Dispatch !ruby %<CR>
nmap <Leader>ro :!rubocop -a %<CR>
nmap <Leader>rj :%!python -m json.tool<CR>
nmap <Leader>rt :!ctags -R --exclude=.git --exclude=log *<CR>

" test (rspec) 
let g:rspec_command = "Dispatch rspec {spec}"
map <Leader>tf :call RunCurrentSpecFile()<CR>
map <Leader>tt :call RunNearestSpec()<CR>
map <Leader>tl :call RunLastSpec()<CR>
map <Leader>ta :call RunAllSpecs()<CR>

" Plugin settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp 
let g:ctrlp_custom_ignore= 'node_modules\|DS_Store\|git\|target\|log\|vendor\|_site\|tmp'
let g:ctrlp_match_window= 'bottom,order:ttb,min:1,max:10,results:10'
let g:ctrlp_working_path_mode = 0                

" ctags 
set tags=./tags;

" emmet
let g:user_emmet_expandabbr_key = '<C-y>'

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


if executable('java') && filereadable(expand('~/lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_1.5.600.v20191014-2022.jar'))
    au User lsp_setup call lsp#register_server({
        \ 'name': 'eclipse.jdt.ls',
        \ 'cmd': {server_info->[
        \     'java',
        \     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        \     '-Dosgi.bundles.defaultStartLevel=4',
        \     '-Declipse.product=org.eclipse.jdt.ls.core.product',
        \     '-Dlog.level=ALL',
        \     '-noverify',
        \     '-Dfile.encoding=UTF-8',
        \     '-Xmx1G',
        \     '-jar',
        \     expand('~/lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_1.5.600.v20191014-2022.jar'),
        \     '-configuration',
        \     expand('~/lsp/eclipse.jdt.ls/config_win'),
        \     '-data',
        \     getcwd()
        \ ]},
        \ 'whitelist': ['java'],
        \ })
endif
