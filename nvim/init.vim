set nocompatible              " be iMproved
filetype plugin indent on     " required!

source ~/.config/nvim/plugged.vim
source ~/.config/nvim/plugin_config.vim

if (has("termguicolors"))
  set termguicolors
endif

syntax on

set encoding=utf8

set so=10
set number
set hidden
set nowrap
set showmatch
set clipboard=unnamed


set wildignore=*.o,*~,*.pyc

" keyword highlighting
set iskeyword+=-

" File format detection
set ffs=unix,dos,mac
" show status line
set laststatus=2

" print margin at 80 chars
set colorcolumn=80

behave mswin

" Turn backup off, since most stuff is in SVN, git etc.
set nowb
set nobackup
set noswapfile

" No annoying sound on errors
set noerrorbells
set visualbell
set t_vb=
set tm=500

set ignorecase
set smartcase
set hlsearch

set expandtab
set smarttab
set smartindent
set shiftwidth=2
set tabstop=2

set autoread
set guifont=Hack:h12
set t_Co=256
set background=dark
colorscheme one

noremap ; :
noremap 0 ^
noremap <space> $
noremap Y y$

" Treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk

" Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

let mapleader = ","

nnoremap <leader>l :set list!<CR>
nnoremap <leader>hs :noh<CR>

" edit and reload vimrc
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

map <leader>pp :setlocal paste!<cr>

map <Leader>bn :MBEbn <cr>
map <Leader>bp :MBEbp <cr>
map <Leader>bt :MBEToggle <cr>


autocmd VimEnter * call StartUp()
autocmd VimEnter * wincmd p

function! StartUp()
  execute 'NERDTree' getcwd()
endfunction

nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" arrow keys resize pane
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>
