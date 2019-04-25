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
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'

Plug 'vim-scripts/matchparenpp'
" replace the above with this "
" https://github.com/itchyny/vim-parenmatch "


" File explore
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'djoshea/vim-autoread'
Plug 'fholgado/minibufexpl.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'valloric/listtoggle'

" Auto complete
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
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
Plug 'ngmy/vim-rubocop'

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
Plug 'tpope/vim-sensible'

" Linters
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 'do': 'npm install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'ruby'] }

" Colorscheme
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()
