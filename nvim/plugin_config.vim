" <TAB>: completion.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"""""""""""""""""""""""""""""""
" Airline
"""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:polyglot_disabled = ['jsx']

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"
let g:airline_theme ='onedark'
let g:airline#extensions#ale#enabled = 1

"""""""""""""""""""""""""""
" JavaScript
"""""""""""""""""""""""""""
let g:jsx_ext_required = 0


"""""""""""""""""""""""""""
" NerdTree
"""""""""""""""""""""""""""
let g:nerdtreechdirmode = 2
let NERDSpaceDelims = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
map nt :NERDTreeToggle<cr>
map nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""
" ALE
"""""""""""""""""""""""""""
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_column_always = 1
let g:ale_linters = {
  \   'elixir': ['credo', 'dialyxir', 'elixir-ls'],
  \   'html': [],
  \   'javascript': ['eslint', 'tsserver'],
  \   'json': ['prettier'],
  \   'scss': ['prettier'],
  \   'typescript': ['tslint', 'typecheck', 'tsserver'],
  \   'vim': ['vint'],
  \   'vue': ['vls', 'eslint'],
  \}

let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'elixir': ['mix_format'],
  \   'javascript': ['prettier', 'eslint'],
  \   'json': ['prettier'],
  \   'markdown': ['prettier'],
  \   'typescript': ['prettier', 'tslint'],
  \   'vue': ['prettier'],
  \   'yaml': ['prettier'],
  \   'html': ['prettier']
  \}

let g:ale_elixir_elixir_ls_release = '~/.bin/elixir-ls/release/'

noremap <Leader>ad :ALEGoToDefinition<CR>
nnoremap <leader>af :ALEFix<cr>
noremap <Leader>ar :ALEFindReferences<CR>
"Move between linting errors
nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>

"""""""""""""""""""""""""""
" vim prettier
"""""""""""""""""""""""""""
let g:prettier#config#print_width = 80
let g:prettier#config#tab_width = 2
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'true'
let g:prettier#config#arrow_parens = 'always'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#config_precedence = 'prefer-file'
let g:prettier#config#prose_wrap = 'preserve'

"""""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|\.rvm$\|vendor$'
let g:ctrlp_tabpage_position = 'a'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 0

"""""""""""""""""""""""""""
" Ack + ag
"""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ack_highlight=1

"""""""""""""""""""""""""""
" vim togglelist (quickfix)
"""""""""""""""""""""""""""
let g:lt_height = 10

" arrow keys resize pane
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>
