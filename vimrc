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

" Allow backspace
set backspace=indent,eol,start

" Auto-indent
set ai

" Line numbers and ruler
set ruler
set nu

" Highlight search
set hlsearch
set incsearch
set ignorecase 
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

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/oblitum/YouCompleteMe',
            \ {'do': 'python3 ./install.py --clang-completer'}

Plug 'https://github.com/lyuts/vim-rtags'
Plug 'https://github.com/szw/vim-tags.git'
call plug#end()

" Make CTRLP not slow
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_match_window = 'min:4:max:10,results:20'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]\.git$',
    \ 'file': '\v\.(o|pyc)',
    \ }
set wildignore+=*/.git/*,*.o,*.pyc
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore .git --hidden -g ""'
    set grepprg=ag\ --nogroup\ --nocolor

"    let g:ctrlp_use_caching = 0

endif

" Lint and clangformat commands
command Lint execute "!eslint % --fix"

" Helpers for buffer cycling
nnoremap gp :bp<CR>
nnoremap gn :bn<CR>

" Insert matching parens and braces
inoremap {<CR> {<CR>}<Esc>O
" inoremap ( ()<Esc>i
inoremap [ []<Esc>i

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
nmap <leader>bq :bp <BAR> :bd #<CR>
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
