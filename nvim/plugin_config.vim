"""""""""""""""""""""""""""""""""
" deoplete
"""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1


"""""""""""""""""""""""""""
" Airline
"""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:polyglot_disabled = ['jsx']

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"
let g:airline_theme='onedark'


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
let g:ale_linters = { 'javascript': ['eslint'] }


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
let g:prettier#config#parser = 'babylon'
let g:prettier#config#config_precedence = 'prefer-file'
let g:prettier#config#prose_wrap = 'preserve'


"""""""""""""""""""""""""""
" CtrlP + Ack
"""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|\.rvm$\|vendor$'
let g:ctrlp_tabpage_position = 'a'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 0

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
