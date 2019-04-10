" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.config/nvim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons', { 'on': 'NERDTreeToggle' }

" Editing
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'remko/detectindent'

" File explore
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'

" Auto complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'carlitux/deoplete-ternjs'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'Valloric/YouCompleteMe'

" TypeScript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

Plug 'posva/vim-vue'

" Syntax Highlight - Formatting
Plug 'lilydjwg/colorizer'
Plug 'sheerun/vim-polyglot'
Plug 'sbdchd/neoformat'

" Programming
Plug 'isRuslan/vim-es6'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'moll/vim-node'
Plug 'jparise/vim-graphql'

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
Plug 'vim-scripts/matchparenpp'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'djoshea/vim-autoread'
Plug 'mhinz/vim-startify'
Plug 'fholgado/minibufexpl.vim'
Plug 'sjl/vitality.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-fugitive'
Plug 'rizzatti/dash.vim'

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
