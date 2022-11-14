-- PLUGINS --
--
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
Plug('nvim-lua/plenary.nvim')         
Plug 'folke/tokyonight.nvim'
Plug('christoomey/vim-tmux-navigator')
Plug('preservim/nerdtree')
Plug('tpope/vim-commentary')
Plug('nvim-telescope/telescope.nvim')
Plug('mattn/emmet-vim')
Plug 'nvim-lualine/lualine.nvim'
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
vim.call('plug#end')

-- CONFIGURATION LOADING -- 
--
require('lsp-config')
require('telescope-config')
require('nerdtree-config')
require('lualine').setup()

-- UI --
--
vim.o.relativenumber = true
vim.cmd 'colorscheme tokyonight-storm'
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5

-- OPTIONS [https://neovim.io/doc/user/quickref.html#option-list] --
--
vim.o.number = true
vim.o.clipboard = "unnamed"					                                                -- use the system clipboard for yank and paste
vim.o.tabstop = 2                   				                                        -- number of spaces when <TAB> character is encountered when opening a file
vim.o.softtabstop = 2                            	                                  -- in insert mode, number of spaces that is inserted when you hit <TAB>
vim.o.expandtab = true                                     	                        -- spaces are used when tabbing 
vim.o.shiftwidth = 2                                                                -- how many columns text is indented with the reindent operations
vim.o.autoindent = true                             	                              -- autoindent the code  
vim.o.swapfile = false                                                              -- no swap file created when opening a file
vim.o.hidden = true                                                                 -- allow unsaved buffers 
vim.o.ignorecase = true                                                             -- make searches case-sensitive only if they contain upper-case characters


-- MAPPING --
--
vim.g.mapleader = ","                                                               -- leader key 
vim.keymap.set('i','jj','<esc>')                                                    -- jj means escape (normal mode)
vim.keymap.set({'n','i'},'<C-s>','<esc>:w<CR>')                                     -- go in normal mode and save 
vim.keymap.set({'n','i'},'<C-w>','<esc>:q!<CR>')                                    -- close window with C-w
vim.keymap.set('n','<C-l>','<C-w>l')                                                -- navigate window right  
vim.keymap.set('n','<C-h>','<C-w>h')                                                -- navigate window left  
vim.keymap.set('n','<C-j>','<C-w>j')                                                -- navigate window down
vim.keymap.set('n','<C-k>','<C-w>k')                                                -- navigate window up  

-- FILES --
--
vim.keymap.set('n','<leader>fv',':e ~/.config/nvim/init.lua<CR>')


