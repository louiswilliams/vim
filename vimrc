syntax on
colorscheme molokai

" Normal escape
imap jj <Esc>
" Escape and move right 1 character
imap jk <Esc>l

" Convert tabs to spaces and set tab spacing
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Auto-indent
set ai

" Line numbers and ruler
set ruler
set nu

" Highlight search
set hlsearch
set incsearch
" Don't highlight after exiting search
noh

" Disable error bels
set noerrorbells

" Hide buffers 
set hidden

" Don't make swap files or keep backups
" set nobackup
" set nowb
" set noswapfile

" Ctrl-P and Airline
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-airline

" Helpers for buffer cycling
nnoremap gp :bp<CR>
nnoremap gn :bn<CR>

" Use space character as leader
let mapleader = " "
let g:mapleader = " "

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

" Tab cycles windows
map <Tab> <C-W>w

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemode = ":t"  
