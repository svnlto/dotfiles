"""""""""""""""""""""""""""""""""
" deoplete
"""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <silent><expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"

"""""""""""""""""""""""""""""""""
" denite
""""""""""""""""""""""""""""""""
call denite#custom#map('insert', "<Up>", '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', "<Down>", '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<c-u>', '<denite:scroll_up>' , 'noremap')
call denite#custom#map('insert', '<c-d>', '<denite:scroll_down>' , 'noremap')
call denite#custom#option('_', {
  \ 'prompt': '⟩',
  \ 'winheight': 10,
  \ 'auto_resize': 1,
  \})
let s:menus = {}
let s:menus.neovim = {
  \ 'description': 'Tools & Keybindings'
\ }
let s:menus.neovim.command_candidates = []
let s:menus.tmux = {
  \ 'description': 'Keybindings'
\ }
let s:menus.tmux.command_candidates = []
let s:menus.git = {
  \ 'description': 'Git power menu <Leader>g'
\ }
let s:menus.git.command_candidates = []

"""""""""""""""""""""""""""""""
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
" CtrlP + ag
"""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|\.rvm$\|vendor$'
let g:ctrlp_tabpage_position = 'a'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 0


" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag --literal --files-with-matches --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
  endif
endif

" arrow keys resize pane
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>
let s:menus.neovim.command_candidates += [['Resize pane: Arrow Keys', '']]

" vim-fugitive
let s:menus.neovim.command_candidates += [['Git menu: <Leader>g', 'Denite menu:git']]
let s:menus.git.command_candidates += [['Status `g status`', 'Git status']]
let s:menus.git.command_candidates += [['Add Patch `g add -p`', 'Git add -p']]
let s:menus.git.command_candidates += [['Commit `g commit`', 'Git commit']]
