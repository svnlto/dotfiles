" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle', 'commit': '8d005db' }

" Editing
Plug 'remko/detectindent'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'
Plug 'vim-scripts/matchparenpp'

" File explore
Plug 'scrooloose/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'djoshea/vim-autoread'
Plug 'fholgado/minibufexpl.vim'
Plug 'valloric/listtoggle'

" Auto complete
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax Highlight - Formatting
Plug 'lilydjwg/colorizer'
Plug 'sheerun/vim-polyglot'
Plug 'sbdchd/neoformat'
Plug 'tsandall/vim-rego'

" JS - TypeScript - GQL
Plug 'isRuslan/vim-es6'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'moll/vim-node'
Plug 'jparise/vim-graphql'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" Terraform
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'

" GoLang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Others
Plug 'airblade/vim-gitgutter'
Plug 'jordwalke/VimSplitBalancer'
Plug 'editorconfig/editorconfig-vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-sensible'

" Linters
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 'do': 'npm install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'ruby'] }

" Colorscheme
Plug 'rakr/vim-one'

Plug 'ryanoasis/vim-devicons'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

call plug#end()
