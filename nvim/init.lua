-- PLUGINS --
--
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
Plug('kaicataldo/material.vim')
Plug('christoomey/vim-tmux-navigator')
Plug('preservim/nerdtree')
Plug('tpope/vim-commentary')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
vim.call('plug#end')

-- UI --
--
vim.o.background = 'dark'
vim.o.relativenumber = true
vim.cmd('colorscheme Material')


-- OPTIONS [https://neovim.io/doc/user/quickref.html#option-list] --
--
vim.o.number = true						                              -- display line numbers 
vim.o.clipboard = "unnamed"					                        -- use the system clipboard for yank and paste
vim.o.tabstop = 2                   				                -- number of spaces when <TAB> character is encountered when opening a file
vim.o.softtabstop = 2                            	          -- in insert mode, number of spaces that is inserted when you hit <TAB>
vim.o.expandtab = true                                     	-- spaces are used when tabbing 
vim.o.shiftwidth = 2                                        -- how many columns text is indented with the reindent operations
vim.o.autoindent = true                             	      -- autoindent the code  
vim.o.swapfile = false                                      -- no swap file created when opening a file
vim.o.hidden = true                                         -- allow unsaved buffers 
vim.o.ignorecase = true                                     -- make searches case-sensitive only if they contain upper-case characters


-- MAPPING --
--
vim.g.mapleader = ","                                       -- leader key 
vim.keymap.set('i','jj','<esc>')                            -- jj means escape (normal mode)
vim.keymap.set({'n','i'},'<C-s>','<esc>:w<CR>')             -- go in normal mode and save 
vim.keymap.set({'n','i'},'<C-w>','<esc>:q!<CR>')                        -- close window with C-w
vim.keymap.set('n','<C-g>',':NERDTreeToggle<CR>')           -- call nerdtree shortcut
vim.keymap.set({'n','i'},'<C-h>',':tatata<CR>')               -- navigate window left 
vim.keymap.set('n','<C-l>','<C-w>l')                          -- navigate window right  
vim.keymap.set({'n','i'},'<C-u>',':Telescope find_files<CR>')                        -- navigate window right  
-- noremap <C-l> <C-w>l
-- noremap <C-j> <C-w>j
-- noremap <C-k> <C-w>k





