" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" Initialize plugin system
call plug#end()