call plug#begin('~/.local/share/nvim/plugged')

Plug 'gertjanreynaert/cobalt2-vim-theme'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" Initialize plugin system
call plug#end()

syntax enable
set termguicolors
colorscheme cobalt2

" Numbers
set number
set relativenumber
" Set relativenumber for netrw buffers
let g:netrw_bufsettings = "noma nomod nu nobl nowrap ro"
" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir="rm -r"
