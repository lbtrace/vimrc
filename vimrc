"Ignore case
set ic
set smartcase

set backspace=2
set cursorline
syntax on
set showmode
set encoding=utf-8
set showmatch
set hlsearch
filetype on
set laststatus=2


" Insert mode key remaps
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-Q> <Esc>:q<CR>
inoremap <C-S> <Esc>:w<CR>

" Normal mode key remaps
nnoremap <C-Q> :q<CR>
nnoremap <C-S> :w<CR>

" Fzf config
nnoremap <C-p> :Files<CR>
let g:fzf_layout = { 'down': '40%' }

" airline config
let g:airline_extensions = ['branch']
let g:airline_powerline_fonts = 1

" vim plugins manage
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
call plug#end()

