set nocompatible              " be iMproved

source ~/.config/nvim/plugged.vim
source ~/.config/nvim/plugin_config.vim

if (has("termguicolors"))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set so=0
set number
set relativenumber
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

" Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

let mapleader = ","

nnoremap <leader>ls :set list!<CR>
nnoremap <leader>hs :noh<CR>

" edit and reload vimrc
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>pp :setlocal paste!<cr>

nnoremap <Leader>a :Ack<space>

autocmd VimEnter * call StartUp()
autocmd VimEnter * wincmd p

function! StartUp()
  execute 'NERDTree' getcwd()
endfunction
