" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Editing
Plug 'remko/detectindent'
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'
Plug 'vim-scripts/matchparenpp'

" File explore
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'djoshea/vim-autoread'
Plug 'fholgado/minibufexpl.vim'
Plug 'tpope/vim-fugitive'

" Auto complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }

" Syntax Highlight - Formatting
Plug 'lilydjwg/colorizer'
Plug 'sheerun/vim-polyglot'
Plug 'sbdchd/neoformat'

" JS - TypeScript - GQL
Plug 'isRuslan/vim-es6'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'moll/vim-node'
Plug 'jparise/vim-graphql'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'posva/vim-vue'

" Ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'vim-ruby/vim-ruby'

" Go
Plug 'fatih/vim-go'

" Elixir
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'

" Others
Plug 'airblade/vim-gitgutter'
Plug 'jordwalke/VimSplitBalancer'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mileszs/ack.vim'

" Linters
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 'do': 'npm install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown'] }

" Colorscheme
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()
