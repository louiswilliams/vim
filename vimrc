syntax on
colorscheme molokai

imap jk <Esc>
imap ll <Esc>l

set expandtab

set smarttab

set shiftwidth=4
set tabstop=4

set ai

let mapleader = " "
let g:mapleader = " "

set ruler

set hlsearch
set incsearch
noh

set noerrorbells

set hidden

set nobackup
set nowb
set noswapfile

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-airline

nnoremap gp :bp<CR>
nnoremap gn :bn<CR>

" New buffer
nmap <leader>t :enew<CR>
" Next buffer
nmap <leader>l :bn<CR>
" Previous buffer
nmap <leader>h :bp<CR>
" Close buffer and go to previous
nmap <leader>bq :bp <BAR> bd #<CR>
" Close buffer 
nmap <leader>bd :bd<CR>
" List buffers
nmap <leader>bl :ls<CR>
" Horizontal split window
nmap <leader>n <C-W>n
" New horizontal split window
nmap <leader>s <C-W>s
" Close current window
nmap <leader>c <C-W>c
" Vertical split
nmap <leader>v <C-W>v
" Next window
nmap <leader>[ <C-W>w
" Prev window
nmap <leader>] <C-W>p
nmap <leader>w :w<CR>
nmap <leader>wq :wq<CR>
nmap <leader>q :q!<CR>

map <Tab> <C-W>w
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemode = ":t"  
